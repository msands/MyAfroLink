class BusinessProfilesController< ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def business_profile_params
    prarams.require(:business_profile).permit(
      :name,
      :address,
      :city,
      :time_open,
      :time_close,
      :image
    )
  end

end
