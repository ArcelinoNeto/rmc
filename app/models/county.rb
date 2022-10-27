class County < ApplicationRecord
  enum status: [:active, :inactive]

  belongs_to :user
end
