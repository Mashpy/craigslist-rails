class Posts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.references :category 
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
