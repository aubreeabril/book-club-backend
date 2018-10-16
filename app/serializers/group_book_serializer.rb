class GroupBookSerializer < ActiveModel::Serializer
  attributes :id, :isbn, :title, :image, :author, :group_id
  has_many :votes
end
