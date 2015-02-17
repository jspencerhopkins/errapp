class ComerrsController < ApplicationController
  before_action :set_comerr, only: [:show, :edit, :update, :destroy]

  # GET /comerrs
  # GET /comerrs.json
  def index
    @comerrs = Comerr.all
  end

  # GET /comerrs/1
  # GET /comerrs/1.json
  def show
  end

  # GET /comerrs/new
  def new
    @comerr = Comerr.new
  end

  # GET /comerrs/1/edit
  def edit
  end

  # POST /comerrs
  # POST /comerrs.json
  def create
    @comerr = Comerr.new(comerr_params)

    respond_to do |format|
      if @comerr.save
        format.html { redirect_to @comerr, notice: 'Comerr was successfully created.' }
        format.json { render :show, status: :created, location: @comerr }
      else
        format.html { render :new }
        format.json { render json: @comerr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comerrs/1
  # PATCH/PUT /comerrs/1.json
  def update
    respond_to do |format|
      if @comerr.update(comerr_params)
        format.html { redirect_to @comerr, notice: 'Comerr was successfully updated.' }
        format.json { render :show, status: :ok, location: @comerr }
      else
        format.html { render :edit }
        format.json { render json: @comerr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comerrs/1
  # DELETE /comerrs/1.json
  def destroy
    @comerr.destroy
    respond_to do |format|
      format.html { redirect_to comerrs_url, notice: 'Comerr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comerr
      @comerr = Comerr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comerr_params
      params.require(:comerr).permit(:message, :description, :resolution)
    end
end
