class Api::ReviewsController < Api::BaseController
  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    @error_object = @review.errors.messages unless @review.save
  end

  private
    def review_params
      params.permit(:description, :rating, :user_id, :recipe_id)
    end
end