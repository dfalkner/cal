class CelebrationsController < ApplicationController
  before_action :set_celebration, only: [:show, :edit, :update, :destroy]

  # GET /celebrations
  # GET /celebrations.json
  def index
    @celebrations = Celebration.all
  end

  # GET /celebrations/1
  # GET /celebrations/1.json
  def show
  end

  # GET /celebrations/new
  def new
    @celebration = Celebration.new
  end

  # GET /celebrations/1/edit
  def edit
  end

  # POST /celebrations
  # POST /celebrations.json
  def create
    @celebration = Celebration.new(celebration_params)

    respond_to do |format|
      if @celebration.save
        format.html { redirect_to @celebration, notice: 'Celebration was successfully created.' }
        format.json { render action: 'show', status: :created, location: @celebration }
      else
        format.html { render action: 'new' }
        format.json { render json: @celebration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebrations/1
  # PATCH/PUT /celebrations/1.json
  def update
    respond_to do |format|
      if @celebration.update(celebration_params)
        format.html { redirect_to @celebration, notice: 'Celebration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @celebration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebrations/1
  # DELETE /celebrations/1.json
  def destroy
    @celebration.destroy
    respond_to do |format|
      format.html { redirect_to celebrations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebration
      @celebration = Celebration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def celebration_params
      params.require(:celebration).permit(:label, :description, :rank_id, :color_id, :season_id, :ordo_id, :kind, :rule)
    end
end
