class AddReadToGroupBook < ActiveRecord::Migration[5.2]
  def change
    add_column :group_books, :read, :boolean, :default => false
  end
end
