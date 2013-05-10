class CelebrationsController < ApplicationController
  # GET /celebrations
  # GET /celebrations.json
  def index
    @celebrations = Celebration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @celebrations }
    end
  end

  # GET /celebrations/1
  # GET /celebrations/1.json
  def show
    @celebration = Celebration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @celebration }
    end
  end

  # GET /celebrations/new
  # GET /celebrations/new.json
  def new
    @celebration = Celebration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @celebration }
    end
  end

  # GET /celebrations/1/edit
  def edit
    @celebration = Celebration.find(params[:id])
  end

  # POST /celebrations
  # POST /celebrations.json
  def create
    @celebration = Celebration.new(params[:celebration])

    respond_to do |format|
      if @celebration.save
        format.html { redirect_to @celebration, notice: 'Celebration was successfully created.' }
        format.json { render json: @celebration, status: :created, location: @celebration }
      else
        format.html { render action: "new" }
        format.json { render json: @celebration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /celebrations/1
  # PUT /celebrations/1.json
  def update
    @celebration = Celebration.find(params[:id])

    respond_to do |format|
      if @celebration.update_attributes(params[:celebration])
        format.html { redirect_to @celebration, notice: 'Celebration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @celebration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebrations/1
  # DELETE /celebrations/1.json
  def destroy
    @celebration = Celebration.find(params[:id])
    @celebration.destroy

    respond_to do |format|
      format.html { redirect_to celebrations_url }
      format.json { head :no_content }
    end
  end
end
