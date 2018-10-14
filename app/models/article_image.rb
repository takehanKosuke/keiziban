# == Schema Information
#
# Table name: article_images
#
#  id         :bigint(8)        not null, primary key
#  image      :string(255)      not null
#  article_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArticleImage < ActiveRecord::Base
  belongs_to :article
  accepts_nested_attributes_for :article, allow_destroy: true

  # mount_uploader :image, ImagesUploader
end
