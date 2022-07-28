class ReviewsController < ApplicationController

    def new 
        @book = Book.find(params[:book_id])
        @review = Review.new
    end

    def create 
        @review = Review.new(review_params)
        @book = Book.find(params[:book_id])
        @review.book = @book

        if @review.save 
            flash[:WOH] = "You have made one small contribution to the internet. Likely no one will ever notice."

            redirect_to "/books/#{book.id}"
        else 
            flash.now[:error] = @review.errors.full_messages.to_sentence
            render :"reviews/new"
        end
    end 

    private

    def review_params 
        params.require(:review).permit(:rating, :body)
    end

end
