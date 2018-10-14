class WelcomeController < ApplicationController
  def index
    @articles = Article.open
  end
end
