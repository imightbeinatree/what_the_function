class AddNoteFieldToTwinsTable < ActiveRecord::Migration
  def self.up
    add_column :twins, :note, :text 
  end

  def self.down
    remove_column :twins, :note
  end
end
