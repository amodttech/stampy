class User < ApplicationRecord
    has_many :collections, dependent: :destroy
    has_many :stamps, through: :collections
end
