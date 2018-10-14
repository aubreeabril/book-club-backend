class User < ApplicationRecord
  validates_uniqueness_of :auth0sub

  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_books
end
