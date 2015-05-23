class MyProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user_profile = current_user.profile
    render 'user_profile/show'
  end
end

