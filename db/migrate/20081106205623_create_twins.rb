class CreateTwins < ActiveRecord::Migration
  def self.up
    create_table :twins do |t|
      t.integer :left_function_id
      t.integer :right_function_id

      t.timestamps
    end
  end

  def self.down
    drop_table :twins
  end
end
