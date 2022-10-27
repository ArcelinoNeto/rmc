class County < ApplicationRecord
  enum status: [:active, :inactive]
  paginates_per 20

  belongs_to :user
end
