class DiscerningsController < ApplicationController
  before_action :set_discerning, only: [:show, :edit, :update, :destroy]

  # GET /discernings
  # GET /discernings.json
  def index
    @discernings = Discerning.all
  end

  # GET /discernings/1
  # GET /discernings/1.json
  def show
  end

  # GET /discernings/new
  def new
  end

  # GET /discernings/1/edit
  def edit
  end

  # POST /discernings
  # POST /discernings.json
  def create
    @discerning = Discerning.new(discerning_params)
    @discerning.user = current_user

    respond_to do |format|
      if @discerning.save
        format.html { redirect_to @discerning, notice: 'Discerning was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /discernings/1
  # PATCH/PUT /discernings/1.json
  def update
    respond_to do |format|
      if @discerning.update(discerning_params)
        format.html { redirect_to @discerning, notice: 'Discerning was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /discernings/1
  # DELETE /discernings/1.json
  def destroy
    @discerning.destroy
    respond_to do |format|
      format.html { redirect_to discernings_url, notice: 'Discerning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discerning
      @discerning = Discerning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discerning_params
      params.require(:discerning).permit(:person_id, :walk, :presence, :personality, :posture, :carriage, :bone, :structure, :smile, :appearance, :distinctiveness, :jenesaisquoi, :comment)
    end
end
