class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :schoolname, :string
    add_index :users, :schoolname
    add_column :users, :personname, :string
    add_index :users, :personname
    add_column :users, :major, :string
    add_index :users, :major
    add_column :users, :age, :string
    add_index :users, :age
    add_column :users, :grade, :string
    add_index :users, :grade
    add_column :users, :smoke, :string
    add_index :users, :smoke
    add_column :users, :drink, :string
    add_index :users, :drink

    add_column :users, :weekend, :string
    add_index :users, :weekend
    add_column :users, :living, :string
    add_index :users, :living
    add_column :users, :sharing, :string
    add_index :users, :sharing
    add_column :users, :visitor, :string
    add_index :users, :visitor
    add_column :users, :sparetime, :string
    add_index :users, :sparetime
    add_column :users, :studywhere, :string
    add_index :users, :studywhere
    add_column :users, :noiselevel, :string
    add_index :users, :noiselevel
    add_column :users, :wakeup, :string
    add_index :users, :wakeup
    add_column :users, :sleep, :string
    add_index :users, :sleep
    add_column :users, :activity, :string
    add_index :users, :activity


  end
end
