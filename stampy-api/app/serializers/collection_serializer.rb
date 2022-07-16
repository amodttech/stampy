class CollectionSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :created_at, :updated_at
  belongs_to :users
end
