class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find(params[:id])
    session[:username] = params[:username]
  end

  def destroy
    session.delete :username
  end
end