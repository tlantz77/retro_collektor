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
    find_collection
  end

  def new
  end

  def create
  end

  def edit
    find_collection
  end

  def update
    @collection = Collection.find(params[:id])
    if @collection.update_attributes(collection_params)
      redirect_to user_collection_path
    else
      render 'edit'
    end
  end

  private

  def find_collection
    @collection = Collection.find(params[:id])
  end

  def collection_params
    params.require(:collection).permit(:title)
  end

end
