class ArticleImage < ActiveRecord::Base
  belongs_to :article
  accepts_nested_attributes_for :article, allow_destroy: true

end
