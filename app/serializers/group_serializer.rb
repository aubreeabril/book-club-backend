class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :current_book, :next_meeting

  has_many :users
end
