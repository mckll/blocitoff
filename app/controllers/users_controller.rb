class UsersController < ApplicationController

  def show
    @user = current_user
    @user_name = @user.email
    @items = @user.items
  end
end
