class UsersController < ApplicationController
  def new
  end

  def create
    # @user = User.new(params.permit(:username, :email, :password))
    @user = User.new(user_params)
    if @user.save
      redirect_to :new_user
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end