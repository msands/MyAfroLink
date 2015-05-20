class UserProfileController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = UserProfile.all
  end

  def new
    @user = UserProfile.new
    @profile = @user.user_profile
  end

  def create
  end

end
