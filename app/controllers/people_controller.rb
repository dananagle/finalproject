class PeopleController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create,:update, :destroy]
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all

#  @people = Person.where(availability: true)
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @discerning = Discerning.new
    @discerning.person = @person
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = current_user.people.new(person_params)
  #  @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }

      else
        format.html { render :new }

      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:address, :user_id, :website, :firstname, :lastname, :description, :eyecolor, :haircolor, :height, :waist, :bust, :hips, :availability, :image, :resorce)
    end
end
