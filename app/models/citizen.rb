class Citizen < ApplicationRecord
  enum status: [:active, :inactive]
  paginates_per 20
  
  has_one :address, :dependent => :destroy
  belongs_to :county
  
  accepts_nested_attributes_for :address
end
