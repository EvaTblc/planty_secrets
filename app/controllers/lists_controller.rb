class ListsController < ApplicationController
  def create
    @lists = List.create(params_list)
    if @lists.save
      redirect_to profile_path
    else
      flash[:notice] = @lists.errors.full_messages.to_sentence
    end
  end

  def update
    @list = List.find(params[:id])
    @list.update
  end

  private

  def params_list
    params.require(:list).permit(:name, :photo)
  end
end
