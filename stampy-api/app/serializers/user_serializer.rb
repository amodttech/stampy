class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :collections

  def collections
    object.collections.map do |collection|
      ::CollectionSerializer.new(collection).attributes
    end
  end

end
