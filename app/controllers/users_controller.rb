class UsersController < ApplicationController
  def new
  	@user = User.new
    @signed_in = current_user
  end

  def show
  	@user = User.find(params[:id])
    @signed_in = current_user
    @products = @user.products
  end

  def create
  	@user = User.new(user_params)
    @signed_in = current_user
  	if @user.save 
  		flash[:success] = "Welcome to Boomtownrack!"
  		redirect_to products_path
      sign_in @user
  	else
  		render 'new'
  	end
  end

private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  	
	end
end
