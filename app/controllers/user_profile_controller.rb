class UserProfileController < ApplicationController

  before_filter :get_user

  def get_user
    @user = User.find(params[:user_id])
  end

  def new
  end

  def create
  end

end
