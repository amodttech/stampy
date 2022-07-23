class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :collections

  def collections
    ActiveModel::SerializableResource.new(object.collections, each_serializer: CollectionSerializer)
  end




end
