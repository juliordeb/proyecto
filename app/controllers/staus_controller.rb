class StausController < ApplicationController
  before_action :set_stau, only: [:show, :edit, :update, :destroy]

  # GET /staus
  # GET /staus.json
  def index
    @staus = Stau.all
  end

  # GET /staus/1
  # GET /staus/1.json
  def show
  end

  # GET /staus/new
  def new
    @stau = Stau.new
  end

  # GET /staus/1/edit
  def edit
  end

  # POST /staus
  # POST /staus.json
  def create
    @stau = Stau.new(stau_params)

    respond_to do |format|
      if @stau.save
        format.html { redirect_to @stau, notice: 'Stau was successfully created.' }
        format.json { render :show, status: :created, location: @stau }
      else
        format.html { render :new }
        format.json { render json: @stau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staus/1
  # PATCH/PUT /staus/1.json
  def update
    respond_to do |format|
      if @stau.update(stau_params)
        format.html { redirect_to @stau, notice: 'Stau was successfully updated.' }
        format.json { render :show, status: :ok, location: @stau }
      else
        format.html { render :edit }
        format.json { render json: @stau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staus/1
  # DELETE /staus/1.json
  def destroy
    @stau.destroy
    respond_to do |format|
      format.html { redirect_to staus_url, notice: 'Stau was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stau
      @stau = Stau.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stau_params
      params.require(:stau).permit(:nombre, :contenido)
    end
end
