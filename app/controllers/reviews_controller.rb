class ReviewsController < ApplicationController
  def new
    # binding.pry
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    # binding.pry
    @review.book = @book

    if @review.save
      redirect_to book_path(@book)
    else
      # binding.pry
      flash.now[:error] = @review.errors.full_messages.to_sentence
      # @errors = @review.errors.full_messages.to_sentence
      render :new
    end

  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
