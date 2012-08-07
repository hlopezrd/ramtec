class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
  	@user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Bienvenido al Portal Web de RAMTEC!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
