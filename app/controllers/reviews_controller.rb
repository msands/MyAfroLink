class ReviewsController < ApplicationController
  def index
    @reviewable = BusinessProfile.find(params[:business_profile_id])
    @reviews = @reviewable.reviews
  end

  def new
  end
end
