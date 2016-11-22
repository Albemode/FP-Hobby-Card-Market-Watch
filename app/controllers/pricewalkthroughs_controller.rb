class PricewalkthroughsController < ApplicationController
  before_action :set_pricewalkthrough, only: [:show, :edit, :update, :destroy]

  # GET /pricewalkthroughs
  # GET /pricewalkthroughs.json
  def index
    @pricewalkthroughs = Pricewalkthrough.all
  end

  # GET /pricewalkthroughs/1
  # GET /pricewalkthroughs/1.json
  def show
  end

  # GET /pricewalkthroughs/new
  def new
    @pricewalkthrough = Pricewalkthrough.new
  end

  # GET /pricewalkthroughs/1/edit
  def edit
  end

  # POST /pricewalkthroughs
  # POST /pricewalkthroughs.json
  def create
    @pricewalkthrough = Pricewalkthrough.new(pricewalkthrough_params)

    respond_to do |format|
      if @pricewalkthrough.save
        format.html { redirect_to @pricewalkthrough, notice: 'Pricewalkthrough was successfully created.' }
        format.json { render :show, status: :created, location: @pricewalkthrough }
      else
        format.html { render :new }
        format.json { render json: @pricewalkthrough.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricewalkthroughs/1
  # PATCH/PUT /pricewalkthroughs/1.json
  def update
    respond_to do |format|
      if @pricewalkthrough.update(pricewalkthrough_params)
        format.html { redirect_to @pricewalkthrough, notice: 'Pricewalkthrough was successfully updated.' }
        format.json { render :show, status: :ok, location: @pricewalkthrough }
      else
        format.html { render :edit }
        format.json { render json: @pricewalkthrough.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricewalkthroughs/1
  # DELETE /pricewalkthroughs/1.json
  def destroy
    @pricewalkthrough.destroy
    respond_to do |format|
      format.html { redirect_to pricewalkthroughs_url, notice: 'Pricewalkthrough was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricewalkthrough
      @pricewalkthrough = Pricewalkthrough.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pricewalkthrough_params
      params.fetch(:pricewalkthrough, {})
    end
end
