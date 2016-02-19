class AddFaculdadeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :faculdade, :string
  end
end
