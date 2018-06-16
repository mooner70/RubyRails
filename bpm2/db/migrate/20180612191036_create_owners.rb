class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.text :context
      t.references :user, index: true, foreign_key: true
      t.references :blog, index: true, foreign_key: true
      t.integer :user_id
      t.string :blog_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
