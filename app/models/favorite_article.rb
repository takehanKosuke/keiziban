# == Schema Information
#
# Table name: favorite_articles
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  article_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FavoriteArticle < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

end
