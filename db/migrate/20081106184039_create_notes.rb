class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.string :title
      t.string :description
      t.integer :programming_language_id
      t.integer :what_function_id

      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
