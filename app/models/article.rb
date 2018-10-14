# == Schema Information
#
# Table name: articles
#
#  id         :bigint(8)        not null, primary key
#  title      :string(255)      not null
#  contents   :string(255)      not null
#  status     :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ActiveRecord::Base
  has_many :article_images
  has_many :favorite_articles
  has_many :users, through: :favorite_articles

  belongs_to :user

  accepts_nested_attributes_for :article_images, allow_destroy: true


  enum status: {open: 0, close: 1, edit: 2}

  scope :open, -> { where(status: 1) }

end
