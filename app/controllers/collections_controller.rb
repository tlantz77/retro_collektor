class CollectionsController < ApplicationController

  before_filter 'authorize', :only => [:edit, :update, :delete]

  def index
    @user = current_user
    if current_user
      render :index
    else
      redirect_to new_session_path
    end
  end

  def show
    find_user_collection
  end

  def new
  end

  def create
  end

  def edit
    find_user_collection
  end

  def update
    find_user_collection
    if @collection.update_attributes(collection_params)
      redirect_to user_collection_path
    else
      render 'edit'
    end
  end

  private

  def find_user_collection
    @user = User.find(params[:user_id])
    @collection = Collection.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:title)
  end

end
