class Citizen < ApplicationRecord
  enum status: [:active, :inactive]
  
  has_one :address, :dependent => :destroy
  belongs_to :county
  
  accepts_nested_attributes_for :address
end
