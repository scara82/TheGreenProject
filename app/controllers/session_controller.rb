class SessionController < ApplicationController
  def new
  end

  def create
    user  = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        user.score = "0"
        session[:user_id] = user.id
        redirect_to '/home'
      else
        redirect_to '/home'
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/home'
  end
end
