class ChoresController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @chore = @list.chores.new
  end
  def create
    @list = List.find(params[:list_id])
    @chore = @list.chores.new(chore_params)
    if @chore.save
      redirect_to list_path(@chore.list)
    else
      render :new
    end
  end
private
  def chore_params
    params.require(:chore).permit(:description)
  end
end
