class FavoritesController < ApplicationController
  before_action :signed_in_user

  def create
    @user = Product.find(params[:favorite][:product_id])
    current_user.favorite!(@user)
    redirect_to(:back)
    flash[:success] = "You've added an item to your profile"
  end

  def destroy
    @user = Favorite.find(params[:id]).product
    current_user.unfavorite!(@user)
    redirect_to(:back)
    flash[:error] = "You've removed an item from your profile"
  end

private

end