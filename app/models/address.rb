class Address < ApplicationRecord
    belongs_to :citizen
    paginates_per 20
end
