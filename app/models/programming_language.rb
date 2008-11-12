class ProgrammingLanguage < ActiveRecord::Base
  has_many :what_functions, :order => 'name ASC'
  validates_uniqueness_of :name
  
  def to_param
    name
  end
end
