class UserProfilesController < ApplicationController

  before_action :authenticate_user!
  skip_before_action :check_profile, only: [:new, :create]

  def index
    @user_profiles = UserProfile.all
  end

  def new
    @user_profile = UserProfile.new
  end

  def show
    @user_profile = UserProfile.find(params[:id])
  end

  def create
    @user_profile = UserProfile.new(user_profile_params)
    @user_profile.user = current_user
    if @user_profile.save
      redirect_to @user_profile, notice: 'Profile was successfully saved'
    else
      flash[:error] = 'There was an error saving your profile'
      render 'new'
    end
  end

  private

  def user_profile_params
    params.require(:user_profile).permit(
      :first_name,
      :last_name,
      :gender,
      :birthday,
      :tribe
    )
  end

end
