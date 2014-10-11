class FavoritesController < ApplicationController
  before_action :signed_in_user

  def create
    @user = Product.find(params[:favorite][:product_id])
    current_user.favorite!(@user)
    redirect_to @user
  end

  def destroy
    @user = Favorite.find(params[:id]).product
    current_user.unfavorite!(@user)
    redirect_to @user
  end

private

end