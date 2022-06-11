class StampSerializer < ActiveModel::Serializer
  attributes :id, :title, :country_id, :year_id, :subject_id, :description, :date_obtained, :created_at, :updated_at
end
