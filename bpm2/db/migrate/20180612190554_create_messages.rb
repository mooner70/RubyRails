class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :post_id
      t.integer :user_id
      t.string :author
      t.text :message

      t.timestamps null: false
    end
  end
end
