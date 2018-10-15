class CreateGroupBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :group_books do |t|
      t.integer :group_id
      t.string :isbn
      t.string :title
      t.string :author 
      t.string :image
      t.timestamps
    end
  end
end
