class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :contents, null: false
      t.integer :status, null: false

      t.integer :user_id, null: false
      t.timestamps
    end

    create_table :article_images do |t|
      t.string :image, null: false

      t.integer :article_id, null: false
      t.timestamps
    end

    create_table :favorite_articles do |t|
      t.integer :user_id, null: false
      t.integer :article_id, null: false

      t.timestamps
    end
  end
end
