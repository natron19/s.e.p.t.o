class User < ActiveRecord::Base
  has_one :pledge
  
  accepts_nested_attributes_for :pledge


end
