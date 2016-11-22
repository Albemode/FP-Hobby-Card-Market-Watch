class VanguardsController < ApplicationController
  before_action :set_vanguard, only: [:show, :edit, :update, :destroy]

  # GET /vanguards
  # GET /vanguards.json
  def index
    @vanguards = Vanguard.all
  end

  # GET /vanguards/1
  # GET /vanguards/1.json
  def show
  end

  # GET /vanguards/new
  def new
    @vanguard = Vanguard.new
  end

  # GET /vanguards/1/edit
  def edit
  end

  # POST /vanguards
  # POST /vanguards.json
  def create
    @vanguard = Vanguard.new(vanguard_params)

    respond_to do |format|
      if @vanguard.save
        format.html { redirect_to @vanguard, notice: 'Vanguard was successfully created.' }
        format.json { render :show, status: :created, location: @vanguard }
      else
        format.html { render :new }
        format.json { render json: @vanguard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vanguards/1
  # PATCH/PUT /vanguards/1.json
  def update
    respond_to do |format|
      if @vanguard.update(vanguard_params)
        format.html { redirect_to @vanguard, notice: 'Vanguard was successfully updated.' }
        format.json { render :show, status: :ok, location: @vanguard }
      else
        format.html { render :edit }
        format.json { render json: @vanguard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vanguards/1
  # DELETE /vanguards/1.json
  def destroy
    @vanguard.destroy
    respond_to do |format|
      format.html { redirect_to vanguards_url, notice: 'Vanguard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vanguard
      @vanguard = Vanguard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vanguard_params
      params.fetch(:vanguard, {})
    end
end
