class SessionsController < ApplicationController
  def new
  end

  def create
    user  = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:id] = user.id
        redirect_to '/home'
      else
        redirect_to '/'
      end
  end

  def destroy
    session[:id] = nil
    redirect_to '/'
  end
end
