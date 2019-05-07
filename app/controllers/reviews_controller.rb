class ReviewsController < ApplicationController

  def index
    render json: Review.all
  end

  def create
    review = Review.new(review_params)


    binding.pry
    
    if review.save
      render json: review
    else
      render json: {
        error: "Error saving review, please check your json values",
        status: 400
      }
    end
  end

  private

  def review_params
    params.require(:review).permit(:before_image, :after_image, :star, :practitioner_id, :user_id, :title, :text)
  end
end
