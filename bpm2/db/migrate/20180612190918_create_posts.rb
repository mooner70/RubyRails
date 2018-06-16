class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :context
      t.references :blog, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :blog_id
      t.integer :user_id
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
