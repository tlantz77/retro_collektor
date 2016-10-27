class GamesController < ApplicationController

  before_filter 'authorize', :only => [:new, :create, :edit, :update, :delete]

  def index
  end

  def show
    find_user_game
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    game = Game.new(game_params)
    if game.save && owner?
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end



  private

  def find_user_game
    @user = User.find(params[:user_id])
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :system, :year, :value, :user_id)
  end

end
