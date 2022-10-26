class ReviewsController < ApplicationController

    def new 
       @book = Book.find(params[:book_id])

       @review = Review.new
    end

    def create 
        @book = Book.find(params[:book_id])
        @review = Review.new(review_params)

        @review.book_id = @book.id

        if @review.save    
            flash[:success] = "you did it! Im proud of you!"
            redirect_to book_path(@book)
        else 
            flash.now[:banana] = @review.errors.full_messages.to_sentence
            render :new
        end

    end

    private 

    def review_params 
        params.require(:review).permit(:rating, :body)
    end

 
end
