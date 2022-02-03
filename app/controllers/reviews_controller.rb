class ReviewsController < ApplicationController
  # protect_from_forgery with: :null_session # invalid csrf token error

  def create
    review = Review.new(review_params)
    if review.save
      render json: review #ReviewSerializer.new(review).serialized_json
    else
      render json: { errors: review.errors.messages }, status: 422
    end
  end
  
  # def destroy
  #   review = Review.find(params[:id])
  #   if review.destroy
  #     head :no_content
  #     render json: { message: "Review deleted" }, status: :ok
  #   else
  #     render json: { errors: review.errors.messages }, status: 422
  #   end
  # end

  private

  def review_params
    params.require(:review).permit(:title, :description, :score, :company_id)
  end
end
