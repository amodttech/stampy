class Stamp < ApplicationRecord
  belongs_to :country
  belongs_to :year
  belongs_to :subject
  has_one_attached :image

  accepts_nested_attributes_for :year, :subject, :country
end
