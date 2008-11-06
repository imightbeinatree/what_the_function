class WhatFunction < ActiveRecord::Base
  belongs_to :programming_language
  
  validates_uniqueness_of :name, :scope => :programming_language_id
  
  def to_param
    name
  end
end
