class CreateProgrammingLanguages < ActiveRecord::Migration
  def self.up
    create_table :programming_languages do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :programming_languages
  end
end
