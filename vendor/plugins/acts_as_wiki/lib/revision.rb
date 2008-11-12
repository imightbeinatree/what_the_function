class Revision < ActiveRecord::Base
  belongs_to :obj, :foreign_key => 'obj_id', :polymorphic => true
#  composed_of :author, :mapping => [ %w(author login), %w(ip ip) ]

  # some helper functions for browsing through revisions
  def prev_rev
    Revision.find(:first, :conditions => ['id < ? AND field_name = ? AND obj_type = ? AND obj_id = ?', self.id, self.field_name, self.obj_type, self.obj_id], :order => 'id DESC') rescue nil
  end
  
  def next_rev 
    Revision.find(:first, :conditions => ['id > ? AND field_name = ? AND obj_type = ? AND obj_id = ?', self.id, self.field_name, self.obj_type, self.obj_id]) rescue nil
  end
  
  def last_rev
    Revision.find(:first, :conditions => ['id >= ? AND field_name = ? AND obj_type = ? AND obj_id = ?', self.id, self.field_name, self.obj_type, self.obj_id], :order => 'id DESC') rescue nil
  end

end
