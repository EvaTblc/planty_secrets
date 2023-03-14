class BookmarksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.list = @list
    @bookmark.favorite = @favorite

    if @bookmark.save
      redirect_to profile_path
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.delete
    redirect_to profile_path
  end

  private

  def params_bookmark
    params.require(:bookmark).permit(:list_id, :favorite_id)
  end
end
