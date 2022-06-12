class StampSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :year, :country, :subject, :description, :date_obtained, :image, :created_at, :updated_at

  belongs_to :country
  belongs_to :year
  belongs_to :subject

  def image
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
end
