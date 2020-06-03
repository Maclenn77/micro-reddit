class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    drop_table :posts
    
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :subreddit, null: false, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
