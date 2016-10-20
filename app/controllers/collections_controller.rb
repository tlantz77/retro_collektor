class CollectionsController < ApplicationController

  def index
    @user = current_user
    if current_user
      render :index
    else
      redirect_to new_session_path
    end
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
  end

  def create
  end


end
