class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :contents

      t.integer :category_id
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    create_table :favorite_article do |t|
      t.integer :user_id, null: false
      t.integer :article_id, null: false

      t.timestamps
    end

    # create_table :follow do |t|
    #   t.sting :follow_type, null: false
    #   t.integer
    #   t.integer
    #
    #   t.timestamps
    # end
  end
end
