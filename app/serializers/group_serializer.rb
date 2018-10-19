class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :current_book, :next_meeting, :vote_by

  has_many :users
  has_many :group_books
  has_many :votes
  has_many :messages
end
