class ArticlesController < ApplicationController
  def show
  end

  def new
    @article = Article.new
    @article.article_images.build
  end

  def create
    @article = Course.new(article_params)
    if @article.save
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

    )
  end

end
