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

  def query
    @game_info = game_info_query(params[:game][:title])
  end

  private

  def find_user_game
    @user = User.find(params[:user_id])
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :system, :year, :value, :user_id)
  end

  def game_info_query(title)
    p_title = title.gsub(/\s/, '+')
    auth_token = "b98a18fd77634c27e96a5a697b00debc6b8fd4e6"
    JSON.parse(HTTP.get("http://ae.pricecharting.com/api/product?t=#{auth_token}&q=#{p_title}"))
  end

end
