class RemoveNotes < ActiveRecord::Migration
  def self.up
     drop_table :notes
  end

  def self.down
    create_table :notes do |t|
      t.string :title
      t.string :description
      t.integer :programming_language_id
      t.integer :what_function_id

      t.timestamps
    end
  end
end
