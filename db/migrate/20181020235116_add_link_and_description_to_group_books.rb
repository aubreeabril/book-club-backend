class AddLinkAndDescriptionToGroupBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :group_books, :link, :string
    add_column :group_books, :description, :text
  end
end
