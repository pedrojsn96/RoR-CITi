class AddIdadeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :idade, :string
  end
end
