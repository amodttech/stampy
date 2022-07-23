class StampSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :description, :year, :country, :subject, :acquired, :cancelled, :image


  def image
    return rails_blob_path(object.image, only_path: true) if object.image.attached?
  end

end
