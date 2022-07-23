class User < ApplicationRecord
    has_many :collections, dependent: :destroy
    has_many :stamps, through: :collections

    accepts_nested_attributes_for :collections, allow_destroy: true
    has_secure_password
end
