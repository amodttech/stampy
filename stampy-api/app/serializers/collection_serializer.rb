class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :stamps

  def stamps
    ActiveModel::SerializableResource.new(object.stamps, each_serializer: StampSerializer)
  end

end
