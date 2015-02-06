class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :name => params[:username]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(root_path)
    else
      flash[:error] = "Invalid login or password"
      redirect_to(login_path)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end
end
