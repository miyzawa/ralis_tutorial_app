class User < ApplicationRecord
  has_many :tweets
  accepts_nested_attributes_for :tweets
end
