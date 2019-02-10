class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name]
      redirect_to '/login'
    else 
      session[:username] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end

end
