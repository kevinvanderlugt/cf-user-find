class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.licenses.build
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User was created"
      redirect_to users_url
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :name)
    end
end
