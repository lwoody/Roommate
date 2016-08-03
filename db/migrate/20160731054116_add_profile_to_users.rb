class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :schoolname, :string
    add_index :users, :schoolname, unique: true
    add_column :users, :personname, :string
    add_index :users, :personname, unique: true
    add_column :users, :major, :string
    add_index :users, :major, unique: true
    add_column :users, :age, :string
    add_index :users, :age, unique: true
    add_column :users, :grade, :string
    add_index :users, :grade, unique: true
    

  end
end
