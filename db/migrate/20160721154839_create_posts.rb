class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_schoolname
      t.string :post_personname
      t.string :post_age
      t.string :post_weekend
      t.string :post_drink
      t.string :post_smoke
      t.string :post_major
      t.string :post_living
      t.string :post_sharing
      t.string :post_visitor
      t.string :post_sparetime
      t.string :post_studywhere
      t.string :post_noiselevel
      t.string :post_wakeup
      t.string :post_sleep
      t.string :post_activity
      

      t.timestamps null: false
    end
  end
end
