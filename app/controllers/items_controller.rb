class ItemsController < ApplicationController

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      flash[:success] = "Your item has been saved."
    else
      flash [:error] = "Error: Please try again."
    end
    redirect_to current_user
  end

  def destroy
  end
end
