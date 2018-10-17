class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :picture, :auth0sub

  has_many :user_groups
  has_many :groups
  has_many :user_books
  has_many :votes
  has_many :messages
end
