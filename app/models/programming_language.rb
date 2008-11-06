class ProgrammingLanguage < ActiveRecord::Base
  has_many :what_functions, :order => 'name ASC'
  
  def to_param
    name
  end
end
