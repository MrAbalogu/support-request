class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def home 

  end   

  def index
  	@users = User.all
  end 	

  def show
    @requests = Request.all
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user  
        redirect_to @user
    else
      render 'new'
    end
  end

  def update 
    @user.update(user_params)
    redirect_to @user
  end   

  def destroy
  end

  private

    def set_user
      @user = User.find(params[:id])
    end  

    def user_params
      params.require(:user).permit(:username, :password, :first_name, :last_name)
    end
end
