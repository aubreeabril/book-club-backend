class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :current_book
      t.timestamp :next_meeting
    end
  end
end
