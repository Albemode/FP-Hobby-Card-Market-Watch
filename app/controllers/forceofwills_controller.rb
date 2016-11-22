class ForceofwillsController < ApplicationController
  before_action :set_forceofwill, only: [:show, :edit, :update, :destroy]

  # GET /forceofwills
  # GET /forceofwills.json
  def index
    @forceofwills = Forceofwill.all
  end

  # GET /forceofwills/1
  # GET /forceofwills/1.json
  def show
  end

  # GET /forceofwills/new
  def new
    @forceofwill = Forceofwill.new
  end

  # GET /forceofwills/1/edit
  def edit
  end

  # POST /forceofwills
  # POST /forceofwills.json
  def create
    @forceofwill = Forceofwill.new(forceofwill_params)

    respond_to do |format|
      if @forceofwill.save
        format.html { redirect_to @forceofwill, notice: 'Forceofwill was successfully created.' }
        format.json { render :show, status: :created, location: @forceofwill }
      else
        format.html { render :new }
        format.json { render json: @forceofwill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forceofwills/1
  # PATCH/PUT /forceofwills/1.json
  def update
    respond_to do |format|
      if @forceofwill.update(forceofwill_params)
        format.html { redirect_to @forceofwill, notice: 'Forceofwill was successfully updated.' }
        format.json { render :show, status: :ok, location: @forceofwill }
      else
        format.html { render :edit }
        format.json { render json: @forceofwill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forceofwills/1
  # DELETE /forceofwills/1.json
  def destroy
    @forceofwill.destroy
    respond_to do |format|
      format.html { redirect_to forceofwills_url, notice: 'Forceofwill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forceofwill
      @forceofwill = Forceofwill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forceofwill_params
      params.fetch(:forceofwill, {})
    end
end
