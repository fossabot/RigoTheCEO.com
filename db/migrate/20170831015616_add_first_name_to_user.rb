class AddFirstNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string, null: false, default: ""
    add_column :users, :last_name, :string
    add_column :users, :gender, :string, limit: 2, null: false
    add_column :users, :picture, :string
    add_column :users, :admin, :boolean, null: false, default: false

    add_index :users, :gender
  end
end
