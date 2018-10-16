class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :group_book
end
