class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username]);
    if user && user.authenticate(params[:session][:password])
      # good scenario
      session[:user_id] = user.id
      flash[:success] = "You habe succesfully logged in"
      redirect_to root_path
    else
      # show new-form again with message
      flash.now[:error] = "There was something wrong with your login information"
      render "new"
    end
end

  def destroy
    session[:user_id] = nil
    flash.now[:success] = "You have successfully logged out"
    redirect_to login_path
  end


end
