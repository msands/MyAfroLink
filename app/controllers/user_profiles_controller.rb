class UserProfilesController < ApplicationController

  before_action :authenticate_user!
  skip_before_action :check_profile, only: [:new, :create]

  def index
    @user_profiles = UserProfile.all
  end

  def show
    @user_profile = UserProfile.find(params[:id])
  end

  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new(user_profile_params)
    @user_profile.user = current_user
    if @user_profile.save
      redirect_to my_profiles_path, notice: 'Profile was successfully saved'
    else
      flash[:error] = 'There was an error saving your profile'
      render 'new'
    end
  end

  def edit
    @user_profile = UserProfile.find(params[:id])
  end

  def update
    @user_profile = UserProfile.find(params[:id])
    if @user_profile.update_attributes(user_profile_params)
      flash[:success] = "User Profile updated"
      redirect_to my_profiles_path
    else
      render 'edit'
    end
  end

  private

  def user_profile_params
    params.require(:user_profile).permit(
      :first_name,
      :last_name,
      :gender,
      :birthday,
      :tribe,
      :description,
      :image
    )
  end

end
