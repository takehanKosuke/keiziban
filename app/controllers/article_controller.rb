class ArticleController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def delete
  end

  private
  def update_params
    params.require(:user).permit(:image, :is_ban, :role, :name)
  end

end
