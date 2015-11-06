class ReviewsController < ApplicationController
  before_filter :load_reviewable

  def index
    @reviewable = BusinessProfile.find(params[:business_profile_id])
    @reviews = @reviewable.reviews
  end

  def new
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def load_reviewable
    resource, id = request.path.split('/')[1,2]
    @reviewable = resource.singularize.classify.constantize.find(id)
  end

end
