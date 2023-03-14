class BookmarksController < ApplicationController
  def create
    list = List.find(params[:list_id])
    favorite = Favorite.find_by(plant_id: params[:plant_id], user: current_user)
    @bookmark = Bookmark.new(list:, favorite:)
    if @bookmark.save
      redirect_to user_list_path(current_user, list)
    else
      flash[:notice] = @bookmark.errors.full_messages.to_sentence
    end

  end

  def destroy
    list = List.find(params[:list_id])
    @bookmark = Bookmark.find_by(list_id: list.id, favorite_id: params[:favorite_id])
    @bookmark.delete
    redirect_to user_list_path(current_user, list)
  end

  private

  def params_bookmark
    params.require(:bookmark).permit(:list_id, :favorite_id, :id)
  end
end
