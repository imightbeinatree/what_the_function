class CreateRevisions < ActiveRecord::Migration
  def self.up
    create_table "revisions" do |t|
      t.column "created_at", :datetime, :null => false
      t.column "updated_at", :datetime, :null => false
      t.column "revised_at", :datetime, :null => false
      t.column "content", :text, :default => "", :null => false
      t.column "author", :string, :limit => 60
      t.column "ip", :string, :limit => 60
      t.column "obj_type", :string
      t.column "obj_id", :integer, :null => false
      t.column "field_name", :string, :limit => 20
    end
  end

  def self.down
    drop_table "revisions"
  end
end
