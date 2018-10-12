class RemovePasswordDigestFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :passwordDigest, :string
    add_column :users, :picture, :string
    add_column :users, :auth0sub, :string
  end
end
