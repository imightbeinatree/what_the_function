require 'active_record'

module Limbo
  module Acts #:nodoc:
    module Wiki #:nodoc:
      def self.included(mod)
        mod.extend(ClassMethods)
      end    

      module ClassMethods
        # set fields to be wikified with optional filter.
        # adds a before_save filter to call revise()
        # and for each field adds the following:
        # * a has_many relation named field_revisions
        # * a filter in the Filter_hash
        # * a reader named field_filtered
        def acts_as_wiki(fields, filter = nil)
          include Limbo::Acts::Wiki::InstanceMethods

          eval_me = []
          unless fields.is_a?(Array)
            fields = [fields]
          end
          
          fields.each {|f| 
            # remember filter
            Filter_hash[f.to_s] = filter
            # add reader to filtered field content
            eval_me << "def #{f}_filtered
                      self.get_filtered('#{f}')
                    end"
            has_many("#{f}_revisions".to_sym, 
                  :class_name => 'Revision', 
                  :foreign_key => 'obj_id', 
                  :conditions => "field_name = '#{f}' and obj_type = '#{self.class}'", 
                  :order => "id DESC",
                  :as => 'obj')
            }
          module_eval eval_me.join("\n")
          before_save Proc.new{|obj| obj.revise(fields)}
          
        end
      end

      # Keep each field's filter in this hash. nil filters do nothing, duh.
      Filter_hash = {}

      # Adds instance methods.
      module InstanceMethods
        # Additional virtual attribute, the current author of the object.
        attr :current_author, true

        # revert field to specified revision
        def revert(field_name, revision_id, author_name = 'unknown')
          self.current_author = author_name
          revision = Revision.find(revision_id)
          if revision
            self.send("#{field_name}=", revision.content)
            revise_field(field_name)
            self.save
          end
        end
        
        # Main entry point for update filter.
        def revise(fields)
          if fields.is_a?(Array)
            fields.each {|f| revise_field f}
          else
            revise_field fields
          end
        end
        
        # Check if the wikified fields have changed, if so, create new revisions for them.
        def revise_field(field_name)
          revisions = self.send("#{field_name}_revisions")
          field_val = self.send(field_name)
          filter = Filter_hash[field_name]
          
          # Fetch the last revision
          if revisions.empty?
            last_revision = ''
          else
            last_revision = revisions[0].content
          end
          # If this field changed, create a new revision for it.
          if field_val && field_val != last_revision
            revised = revisions.create(:content => field_val, 
                                       :author => current_author || 'unknown', 
                                       :field_name => field_name.to_s, 
                                       :obj_type => self.class.to_s,
                                       :revised_at => Time.now)
          end
        end
      
        # return the filtered content of the field.
        def get_filtered(field_name)
          content = self.send(field_name)
          filter = Filter_hash[field_name.to_s]
          if filter
            return filter.call(content)
          else
            return content
          end
        end
        
        # Overloaded version of update_attributes, takes optional author name.
        def update_attributes(attributes, author_name = 'unknown')
          self.current_author = author_name
          super(attributes)
        end
      
        # return the appropriate filter method for the field
        def filter_for(field_name)
          return Filter_hash[field_name]
        end
      end
    end
  end
end

ActiveRecord::Base.class_eval do
  include Limbo::Acts::Wiki
end