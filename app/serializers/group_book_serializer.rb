class GroupBookSerializer < ActiveModel::Serializer
  attributes :id, :isbn, :title, :image, :author
  has_many :votes
end
