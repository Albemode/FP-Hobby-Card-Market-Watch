class DragonballsController < ApplicationController
  before_action :set_dragonball, only: [:show, :edit, :update, :destroy]

  # GET /dragonballs
  # GET /dragonballs.json
  def index
    @dragonballs = Dragonball.all
  end

  # GET /dragonballs/1
  # GET /dragonballs/1.json
  def show
  end

  # GET /dragonballs/new
  def new
    @dragonball = Dragonball.new
  end

  # GET /dragonballs/1/edit
  def edit
  end

  # POST /dragonballs
  # POST /dragonballs.json
  def create
    @dragonball = Dragonball.new(dragonball_params)

    respond_to do |format|
      if @dragonball.save
        format.html { redirect_to @dragonball, notice: 'Dragonball was successfully created.' }
        format.json { render :show, status: :created, location: @dragonball }
      else
        format.html { render :new }
        format.json { render json: @dragonball.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dragonballs/1
  # PATCH/PUT /dragonballs/1.json
  def update
    respond_to do |format|
      if @dragonball.update(dragonball_params)
        format.html { redirect_to @dragonball, notice: 'Dragonball was successfully updated.' }
        format.json { render :show, status: :ok, location: @dragonball }
      else
        format.html { render :edit }
        format.json { render json: @dragonball.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dragonballs/1
  # DELETE /dragonballs/1.json
  def destroy
    @dragonball.destroy
    respond_to do |format|
      format.html { redirect_to dragonballs_url, notice: 'Dragonball was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dragonball
      @dragonball = Dragonball.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dragonball_params
      params.fetch(:dragonball, {})
    end
end
