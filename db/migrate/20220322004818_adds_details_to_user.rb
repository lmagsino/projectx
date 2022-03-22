class AddsDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :password_confirmation, :string
  end
end
