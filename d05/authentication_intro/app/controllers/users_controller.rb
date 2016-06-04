class UsersController < ApplicationController

  # unless you are logged in, you can not see anyons profile page
  before_action :authorize, only: [:show]

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    end
  end

  def edit
  end

  def upate
  end

  def destroy
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
