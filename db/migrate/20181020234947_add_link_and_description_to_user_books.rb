class AddLinkAndDescriptionToUserBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_books, :link, :string
    add_column :user_books, :description, :text
  end
end
