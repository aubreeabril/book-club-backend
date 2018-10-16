class Group < ApplicationRecord
  has_many :user_groups
  has_many :group_books
  has_many :users, through: :user_groups
  has_many :votes, through: :group_books
end
