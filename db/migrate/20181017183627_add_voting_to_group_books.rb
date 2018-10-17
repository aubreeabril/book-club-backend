class AddVotingToGroupBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :group_books, :voting, :boolean
  end
end
