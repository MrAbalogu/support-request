class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      log_in user
      redirect_to user
    else
      flash[:danger] = 'Invalid username/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end

private

  def user_params
      params.require(:user).permit(:username, :password_digest)
  end
end
