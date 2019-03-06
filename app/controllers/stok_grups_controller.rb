class StokGrupsController < ApplicationController
  before_action :set_stok_grup, only: [:show, :edit, :update, :destroy]

  # GET /stok_grups
  # GET /stok_grups.json
  def index
    @stok_grups = StokGrup.all
  end

  # GET /stok_grups/1
  # GET /stok_grups/1.json
  def show
  end

  # GET /stok_grups/new
  def new
    @stok_grup = StokGrup.new
  end

  # GET /stok_grups/1/edit
  def edit
  end

  # POST /stok_grups
  # POST /stok_grups.json
  def create
    @stok_grup = StokGrup.new(stok_grup_params)

    respond_to do |format|
      if @stok_grup.save
        format.html { redirect_to @stok_grup, notice: 'Stok grup was successfully created.' }
        format.json { render :show, status: :created, location: @stok_grup }
      else
        format.html { render :new }
        format.json { render json: @stok_grup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stok_grups/1
  # PATCH/PUT /stok_grups/1.json
  def update
    respond_to do |format|
      if @stok_grup.update(stok_grup_params)
        format.html { redirect_to @stok_grup, notice: 'Stok grup was successfully updated.' }
        format.json { render :show, status: :ok, location: @stok_grup }
      else
        format.html { render :edit }
        format.json { render json: @stok_grup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stok_grups/1
  # DELETE /stok_grups/1.json
  def destroy
    @stok_grup.destroy
    respond_to do |format|
      format.html { redirect_to stok_grups_url, notice: 'Stok grup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stok_grup
      @stok_grup = StokGrup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stok_grup_params
      params.require(:stok_grup).permit(:grup_adi)
    end
end
