class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :stamps

  def stamps
    object.stamps.map do |stamp|
      ::StampSerializer.new(stamp).attributes
    end
  end

end
