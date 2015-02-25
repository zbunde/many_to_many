class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(:email => params[:email])
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      user = User.create(:email => params[:email], :name => Faker::Name.name)
      session[:user_id] = user.id
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end
