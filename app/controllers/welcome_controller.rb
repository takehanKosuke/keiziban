class WelcomeController < ApplicationController
  def index
    @articles = Article.open
  end

  def tweet
    client = Twitter::REST::Client.new do |config|
      # applicationの設定
      config.consumer_key = ENV['TWITTER_API_KEY']
      config.consumer_secret = ENV['TWITTER_API_SECRET']
      # ユーザー情報の設定
      # user_auth = current_user.authentications.first
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end

    # Twitter投稿
    client.update(params[:text])

    redirect_to root_path, notice: 'ツイートしました！'
  end
end
