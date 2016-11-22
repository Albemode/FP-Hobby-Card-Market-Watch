class BuddyfightsController < ApplicationController
  before_action :set_buddyfight, only: [:show, :edit, :update, :destroy]

  # GET /buddyfights
  # GET /buddyfights.json
  def index
    @buddyfights = Buddyfight.all
  end

  # GET /buddyfights/1
  # GET /buddyfights/1.json
  def show
  end

  # GET /buddyfights/new
  def new
    @buddyfight = Buddyfight.new
  end

  # GET /buddyfights/1/edit
  def edit
  end

  # POST /buddyfights
  # POST /buddyfights.json
  def create
    @buddyfight = Buddyfight.new(buddyfight_params)

    respond_to do |format|
      if @buddyfight.save
        format.html { redirect_to @buddyfight, notice: 'Buddyfight was successfully created.' }
        format.json { render :show, status: :created, location: @buddyfight }
      else
        format.html { render :new }
        format.json { render json: @buddyfight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buddyfights/1
  # PATCH/PUT /buddyfights/1.json
  def update
    respond_to do |format|
      if @buddyfight.update(buddyfight_params)
        format.html { redirect_to @buddyfight, notice: 'Buddyfight was successfully updated.' }
        format.json { render :show, status: :ok, location: @buddyfight }
      else
        format.html { render :edit }
        format.json { render json: @buddyfight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buddyfights/1
  # DELETE /buddyfights/1.json
  def destroy
    @buddyfight.destroy
    respond_to do |format|
      format.html { redirect_to buddyfights_url, notice: 'Buddyfight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buddyfight
      @buddyfight = Buddyfight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buddyfight_params
      params.fetch(:buddyfight, {})
    end
end
