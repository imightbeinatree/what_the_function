class ChangeDescriptionFieldsToText < ActiveRecord::Migration
  def self.up
    change_column(:what_functions, :description, :text)
  end

  def self.down
    change_column(:what_functions, :description, :string)
  end
end
