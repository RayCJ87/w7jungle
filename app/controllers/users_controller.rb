class UsersController < ApplicationController


  def new
  end

  def create
    user = User.new (user_params)
    if user.first_name != '' && user.last_name != ''
      if user.save
        session[:user_id] = user.id
        redirect_to '/', notice: "Welcome back!"
      else
        redirect_to '/users/new'
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
