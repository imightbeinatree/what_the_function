class Twin < ActiveRecord::Base
  belongs_to :left_function, :class_name => "WhatFunction"
  belongs_to :right_function, :class_name => "WhatFunction"
  acts_as_wiki :note
  
  def self.get_twin_by_function_ids function_id1, function_id2
    @twin = Twin.find_by_left_function_id_and_right_function_id function_id1, function_id2
    if @twin
      return @twin
    else
      Twin.find_by_left_function_id_and_right_function_id function_id2, function_id1
    end
  end
  
end
