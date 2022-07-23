class Stamp < ApplicationRecord
    belongs_to :collection
    has_one_attached :image
end
