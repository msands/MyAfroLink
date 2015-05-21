class UserProfileController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = User.UserProfile.all
  end

  def new
    @user = User.UserProfile.new
  end

  def create
  end

end
