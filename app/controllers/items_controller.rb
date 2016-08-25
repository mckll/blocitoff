class ItemsController < ApplicationController

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      flash[:success] = "Your item has been saved."
    else
      flash[:error] = "Error: Please try again."
    end
    redirect_to current_user
  end

  def destroy
    @item = current_user.items.find(params[:id])
    if @item.destroy
      flash[:success] = "#{@item.name} was completed."
    else
      flash[:error] = "Error: Item not deleted. Please try again."
  end

  respond_to do |format|
    format.html
    format.js
  end
end
