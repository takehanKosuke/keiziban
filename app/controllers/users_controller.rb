class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
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
