class AddBulletinIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :bulletin_id, :integer
    add_index :posts, :bulletin_id
    add_column :posts, :user_id, :integer
    add_index :posts, :user_id


  end
end
