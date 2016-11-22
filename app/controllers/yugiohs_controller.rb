class YugiohsController < ApplicationController
  before_action :set_yugioh, only: [:show, :edit, :update, :destroy]

  # GET /yugiohs
  # GET /yugiohs.json
  def index
    @yugiohs = Yugioh.all
  end

  # GET /yugiohs/1
  # GET /yugiohs/1.json
  def show
  end

  # GET /yugiohs/new
  def new
    @yugioh = Yugioh.new
  end

  # GET /yugiohs/1/edit
  def edit
  end

  # POST /yugiohs
  # POST /yugiohs.json
  def create
    @yugioh = Yugioh.new(yugioh_params)

    respond_to do |format|
      if @yugioh.save
        format.html { redirect_to @yugioh, notice: 'Yugioh was successfully created.' }
        format.json { render :show, status: :created, location: @yugioh }
      else
        format.html { render :new }
        format.json { render json: @yugioh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yugiohs/1
  # PATCH/PUT /yugiohs/1.json
  def update
    respond_to do |format|
      if @yugioh.update(yugioh_params)
        format.html { redirect_to @yugioh, notice: 'Yugioh was successfully updated.' }
        format.json { render :show, status: :ok, location: @yugioh }
      else
        format.html { render :edit }
        format.json { render json: @yugioh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yugiohs/1
  # DELETE /yugiohs/1.json
  def destroy
    @yugioh.destroy
    respond_to do |format|
      format.html { redirect_to yugiohs_url, notice: 'Yugioh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yugioh
      @yugioh = Yugioh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yugioh_params
      params.fetch(:yugioh, {})
    end
end
