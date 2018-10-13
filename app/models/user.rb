class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable

  has_many :articles, through: :favorite_articles
  has_many :articles

end
