class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :blog, foreign_key: true
      t.string :title
      t.text :body
      t.boolean :published
      t.date :publish_date

      t.timestamps
    end

    change_column_default :posts, :published, false
  end
end
