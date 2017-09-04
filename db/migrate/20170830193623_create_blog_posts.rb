class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.string :subtitle, null: false
      t.string :slug, index: { unique: true }, null: false
      t.text :body, null: false
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
  end
end
