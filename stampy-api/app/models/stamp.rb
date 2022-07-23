class Stamp < ApplicationRecord
    belongs_to :collections
    belongs_to :users
    has_one_attached :image
end
