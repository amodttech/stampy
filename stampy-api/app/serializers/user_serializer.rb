class UserSerializer
  include JSONAPI::Serializer
  attributes :username, :email

  has_many :collections
  has_many :stamps
end
