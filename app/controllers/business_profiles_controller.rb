class BusinessProfilesController< ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @business_profiles = BusinessProfile.all
  end

  def show
    @business_profile = BusinessProfile.find(params[:id])
  end

  def new
    @business_profile = BusinessProfile.new
  end

  def create
    @business_profile = BusinessProfile.new(business_profile_params)
    @business_profile.user = current_user
    if @business_profile.save
      redirect_to business_profile_path, notice: 'Business Profile was successfully listed'
    else
      flash[:error] = 'There was an error listing your business'
      render 'new'
    end
  end

  def edit
    @business_profile = BusinessProfile.find(params[:id])
  end

  def update
    @business_profile = BusinessProfile.find(params[:id])
    if @business_profile.update_attributes(business_profile_params)
      flash[:success] = "Business Profile updated"
      redirect_to business_profile_path
    else
      render 'edit'
    end
  end

  private

  def business_profile_params
    params.require(:business_profile).permit(
      :name,
      :address,
      :city,
      :website,
      :time_open,
      :time_close,
      :category,
      :image
    )
  end

end
