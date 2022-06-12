class StampSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :date_obtained, :created_at, :updated_at

  belongs_to :country
  belongs_to :year
  belongs_to :subject
end
