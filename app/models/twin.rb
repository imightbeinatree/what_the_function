class Twin < ActiveRecord::Base
  belongs_to :left_function, :class_name => "WhatFunction"
  belongs_to :right_function, :class_name => "WhatFunction"
  has_many :notes
end
