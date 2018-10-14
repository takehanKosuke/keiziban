class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable


  has_many :articles
  has_many :articles, through: :favorite_articles

  enum role:{admin: 0, nomal: 1}
end
