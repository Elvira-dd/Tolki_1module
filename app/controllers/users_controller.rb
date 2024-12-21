class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def profile
    @user = current_user
  end
  def show
    @users = Profile.where.not(user: current_user)
  end
end
