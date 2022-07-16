class StampSerializer
  include JSONAPI::Serializer
  attributes :title, :year, :country, :description, :aquisition, :created_at, :updated_at

  belongs_to :collections
  belongs_to :user
end
