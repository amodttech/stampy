class StampSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :year, :country, :subject, :acquired, :cancelled
end
