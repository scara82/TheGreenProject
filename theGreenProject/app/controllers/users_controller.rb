class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.score = params[:score]

    if @user.save
      redirect_to '/'
    else
      redirect_to '/'
    end

    def destroy
    end
end
