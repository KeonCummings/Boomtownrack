class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def new
  	@user = User.new
    @signed_in = current_user
    @products = Product.all
  end

  def show
  	@user = User.find(params[:id])
    @signed_in = current_user
    @products = Product.all
    @products = @user.products.paginate(page: params[:page], per_page: 12)
  end

  def create
  	@user = User.new(user_params)
    @signed_in = current_user
    @products = Product.all
  	if @user.save 
  		flash[:success] = "Welcome to Boomtownrack!"
  		redirect_to products_path
      sign_in @user
  	else
  		render 'new'
  	end
  end

  def edit
    @signed_in = current_user
    @products = Product.all
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
	  end

    # Before filters

    def signed_in_user
      store_location
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
