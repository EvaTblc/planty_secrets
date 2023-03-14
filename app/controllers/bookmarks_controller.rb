class BookmarksController < ApplicationController
  def create
    @bookmarks = Bookmark.new()
  end

  def destroy
  end
end
