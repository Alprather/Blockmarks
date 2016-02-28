class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.all 
  end

  def index
    @users = User.all
  end
end
