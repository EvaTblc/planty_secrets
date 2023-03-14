class ListsController < ApplicationController
  def create
    @plantlist = List.new(params_list)
    @plantlist.user = current_user
    if @plantlist.save
      redirect_to profile_path
    else
      flash[:notice] = @plantlist.errors.full_messages.to_sentence
    end
  end

  def update
    @plantlist = List.find(params[:id])
    @plantlist.update
  end

  def show
    @list = List.find(params[:id])
    @plants = Plant.all
  end

  private

  def params_list
    params.require(:list).permit(:name, :photo)
  end
end