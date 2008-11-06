class CreateWhatFunctions < ActiveRecord::Migration
  def self.up
    create_table :what_functions do |t|
      t.string :name
      t.string :description
      t.integer :programming_language_id

      t.timestamps
    end
  end

  def self.down
    drop_table :what_functions
  end
end
