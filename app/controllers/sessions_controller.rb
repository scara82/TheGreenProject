class SessionsController < ApplicationController
  def new
  end

  def create
    user  = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        # user.score = "0"
        session[:user_id] = user.id
        redirect_to '/home'
      else
        redirect_to '/'
      end
  end

  def destroy
  end
end
