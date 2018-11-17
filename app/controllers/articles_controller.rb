class ArticlesController < ApplicationController
  before_action :twitter_client, only: [:create]

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Course.new(article_params)
    if @article.save
       @client.update("#{@article.content}\r")
      redirect_to root_path, success: "article created！"
    else
      redirect_to new_article_path
    end
  end

  def update
  end

  def edit
  end

  def delete
  end

  private
  def article_params
    params.require(:article).permit(
      :content,
      :title,
    )
  end

  def twitter_client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TWITTER_API_KEY']
      config.consumer_secret = ENV['TWITTER_API_SECRET']
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end
  end

end
