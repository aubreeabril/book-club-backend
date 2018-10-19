class AddVoteByToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :vote_by, :datetime
  end
end
