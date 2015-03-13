class User < ActiveRecord::Base
  has_one :pledge

  validates :name, presence: true
  
  accepts_nested_attributes_for :pledge

end
