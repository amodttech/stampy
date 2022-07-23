class Collection < ApplicationRecord
  belongs_to :user
  has_many :stamps, dependent: :destroy
end
