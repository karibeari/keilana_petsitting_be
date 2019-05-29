class ReviewsController < ApplicationController
  before_action :find_review, only: [:update, :destroy]

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def create
    @review = Review.create(review_params)
    render json: @review
  end

  def update
    @review.update(review_params)
    if @review.save
      render json: @review, status: :accepted
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @review.destroy
    render json: @review, status: :deleted
  end

  private

  def review_params
    params.permit(:content, :pet_name, :pet_type, :human_name)
  end

  def find_review
    @review = Review.find(params[:id])
  end

end
