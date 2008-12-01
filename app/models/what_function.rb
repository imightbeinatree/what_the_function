class WhatFunction < ActiveRecord::Base
  belongs_to :programming_language
  has_many :left_functions, :through => :left_twins
  has_many :right_functions, :through => :right_twins
  
  has_many :left_twins, :class_name => "Twin", :foreign_key => "right_function_id"
  has_many :right_twins, :class_name => "Twin", :foreign_key => "left_function_id"
  
  validates_uniqueness_of :name, :scope => :programming_language_id
  
  def to_param
    name
  end

  def twins
    (left_functions + right_functions).uniq
  end
  
end
