class GroupBookSerializer < ActiveModel::Serializer
  attributes :id, :isbn, :title, :image, :author, :link, :description,  :group_id, :read
  has_many :votes
end
