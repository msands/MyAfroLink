class ReviewsController < ApplicationController
  before_filter :load_reviewable
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @reviewable = BusinessProfile.find(params[:business_profile_id])
    @reviews = @reviewable.reviews
  end

  def new
    @review = @reviewable.reviews.new
  end

  def create
    @review = @reviewable.reviews.new(review_params)
    if @review.save
      redirect_to @reviewable, notice: "Review created."
    else
      render :new
    end
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
