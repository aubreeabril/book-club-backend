class AddImageToUserBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_books, :image, :string
  end
end
