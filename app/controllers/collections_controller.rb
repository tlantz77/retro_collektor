class CollectionsController < ApplicationController

  def index
    if current_user
      render :index
    else
      redirect_to new_session_path
    end
  end

  def new
  end

  def create
  end


end
