class CariGrupsController < ApplicationController
  before_action :set_cari_grup, only: [:show, :edit, :update, :destroy]

  # GET /cari_grups
  # GET /cari_grups.json
  def index
    @cari_grups = CariGrup.all
  end

  # GET /cari_grups/1
  # GET /cari_grups/1.json
  def show
  end

  # GET /cari_grups/new
  def new
    @cari_grup = CariGrup.new
  end

  # GET /cari_grups/1/edit
  def edit
  end

  # POST /cari_grups
  # POST /cari_grups.json
  def create
    @cari_grup = CariGrup.new(cari_grup_params)

    respond_to do |format|
      if @cari_grup.save
        format.html { redirect_to @cari_grup, notice: 'Cari grup was successfully created.' }
        format.json { render :show, status: :created, location: @cari_grup }
      else
        format.html { render :new }
        format.json { render json: @cari_grup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cari_grups/1
  # PATCH/PUT /cari_grups/1.json
  def update
    respond_to do |format|
      if @cari_grup.update(cari_grup_params)
        format.html { redirect_to @cari_grup, notice: 'Cari grup was successfully updated.' }
        format.json { render :show, status: :ok, location: @cari_grup }
      else
        format.html { render :edit }
        format.json { render json: @cari_grup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cari_grups/1
  # DELETE /cari_grups/1.json
  def destroy
    @cari_grup.destroy
    respond_to do |format|
      format.html { redirect_to cari_grups_url, notice: 'Cari grup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cari_grup
      @cari_grup = CariGrup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cari_grup_params
      params.require(:cari_grup).permit(:grup_adi)
    end
end
