class GroupBook < ApplicationRecord
  belongs_to :group
  has_many :votes
end
