class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :profile_url, :string
    add_index :users, :profile_url
    add_column :users, :image, :string
    add_column :users, :admin, :boolean
  end
end
