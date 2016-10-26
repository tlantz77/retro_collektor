class GamesController < ApplicationController

  before_filter 'authorize', :only => [:edit, :update, :delete]

  def index
    find_user
  end

  def show
    find_user_game
  end


  private

  def find_user_game
    @user = User.find(params[:user_id])
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :system, :year, :value)
  end

end
