class ReviewsController < ApplicationController
  class PeopleController < ApplicationController
    before_action :authenticate_user!
    before_action :set_person, only: [:edit, :update, :destroy]
    def edit
    end

    def create
      respond_to do |format|
        if @review.save
          format.html { redirect_to place_path(@review.place), notice: 'Review was successfully created.' }
        else
          redirect_to people_path(@review.person), notice: "Something went wrong"
        end
      end
    end

    def update
      respond_to do |format|
        if @person.update(review_params)
          format.html { redirect_to person_path(@review, place), notice: 'Review was successfully updated.' }
          format.json { render :show, status: :ok, location: @person }
        else
          format.html { render :edit }
          format.json { render json: @person.errors, status: :unprocessable_entity }
        end
    end

    def destroy
    end

    private

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:content, :place_id)
    end
end
