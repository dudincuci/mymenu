class Website < ApplicationRecord
  has_and_belongs_to_many :users
  validates :users, length: { :minimum => 1 }
  
end
