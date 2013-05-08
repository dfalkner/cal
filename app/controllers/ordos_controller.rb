class OrdosController < ApplicationController
  before_action :set_ordo, only: [:show, :edit, :update, :destroy]

  # GET /ordos
  # GET /ordos.json
  def index  
    @ordos = Ordo.all
  end

  # GET /ordos/1
  # GET /ordos/1.json
  def show
  end

  # GET /ordos/new
  def new
    @ordo = Ordo.new
  end

  # GET /ordos/1/edit
  def edit
  end

  # POST /ordos
  # POST /ordos.json
  def create
    @ordo = Ordo.new(ordo_params)

    respond_to do |format|
      if @ordo.save
        format.html { redirect_to @ordo, notice: 'Ordo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ordo }
      else
        format.html { render action: 'new' }
        format.json { render json: @ordo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordos/1
  # PATCH/PUT /ordos/1.json
  def update
    respond_to do |format|
      if @ordo.update(ordo_params)
        format.html { redirect_to @ordo, notice: 'Ordo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ordo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordos/1
  # DELETE /ordos/1.json
  def destroy
    @ordo.destroy
    respond_to do |format|
      format.html { redirect_to ordos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordo
      @ordo = Ordo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordo_params
      params.require(:ordo).permit(:code, :description)
    end
end
