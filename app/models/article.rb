class Article < ActiveRecord::Base
  has_many :article_images
  has_many :favorite_articles
  has_many :users, through: :favorite_articles

  belongs_to :users

  accepts_nested_attributes_for :article_images, allow_destroy: true
end
