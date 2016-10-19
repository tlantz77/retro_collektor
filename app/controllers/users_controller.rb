class UsersController < ApplicationController

  before_filter 'authorize', :only => [:edit, :delete]

  def index
    @users = User.all
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      @errors = user.errors.full_messages
      render :new
    end
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
