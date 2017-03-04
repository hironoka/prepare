class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @comments = Comment.where(birthday_user_id: @user.id)
    @comment = Comment.new(user_id: current_user.id)
  end

end
