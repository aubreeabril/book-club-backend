class GroupBookSerializer < ActiveModel::Serializer
  attributes :id, :isbn, :title, :image, :author, :link, :description,  :group_id
  has_many :votes
end
