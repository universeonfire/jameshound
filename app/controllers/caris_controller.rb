class CarisController < ApplicationController
  before_action :set_cari, only: [:show, :edit, :update, :destroy]

  # GET /caris
  # GET /caris.json
  def index
    @caris = Cari.all
  end

  # GET /caris/1
  # GET /caris/1.json
  def show
 
  end

  # GET /caris/new
  def new
    @cari = Cari.new
  end

  # GET /caris/1/edit
  def edit
  end

  # POST /caris
  # POST /caris.json
  def create
    @cari = Cari.new(cari_params)

    respond_to do |format|
      if @cari.save
        format.html { redirect_to @cari, notice: 'Cari was successfully created.' }
        format.json { render :show, status: :created, location: @cari }
      else
        format.html { render :new }
        format.json { render json: @cari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caris/1
  # PATCH/PUT /caris/1.json
  def update
    respond_to do |format|
      if @cari.update(cari_params)
        format.html { redirect_to @cari, notice: 'Cari was successfully updated.' }
        format.json { render :show, status: :ok, location: @cari }
      else
        format.html { render :edit }
        format.json { render json: @cari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caris/1
  # DELETE /caris/1.json
  def destroy
    @cari.destroy
    respond_to do |format|
      format.html { redirect_to caris_url, notice: 'Cari was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cari
      @cari = Cari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cari_params
      params.require(:cari).permit(:unvan, :unvan2, :adres, :telefon, :il, :ilce, :vergi_dairesi, :vergi_no, :varis_tipi, :cari_grup_id,cari_belge_tanims_attributes: [:id,:belge_id,:_destroy])
    end
end
