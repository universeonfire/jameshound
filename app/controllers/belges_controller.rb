class BelgesController < ApplicationController
  before_action :set_belge, only: [:show, :edit, :update, :destroy]

  # GET /belges
  # GET /belges.json
  def index
    @belges = Belge.all
  end

  # GET /belges/1
  # GET /belges/1.json
  def show
  end

  # GET /belges/new
  def new
    @belge = Belge.new
  end

  # GET /belges/1/edit
  def edit
  end

  # POST /belges
  # POST /belges.json
  def create
    @belge = Belge.new(belge_params)

    respond_to do |format|
      if @belge.save
        format.html { redirect_to @belge, notice: 'Belge was successfully created.' }
        format.json { render :show, status: :created, location: @belge }
      else
        format.html { render :new }
        format.json { render json: @belge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /belges/1
  # PATCH/PUT /belges/1.json
  def update
    respond_to do |format|
      if @belge.update(belge_params)
        format.html { redirect_to @belge, notice: 'Belge was successfully updated.' }
        format.json { render :show, status: :ok, location: @belge }
      else
        format.html { render :edit }
        format.json { render json: @belge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /belges/1
  # DELETE /belges/1.json
  def destroy
    @belge.destroy
    respond_to do |format|
      format.html { redirect_to belges_url, notice: 'Belge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_belge
      @belge = Belge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def belge_params
      params.require(:belge).permit(:baslik, :belge_tip_id, :asama_tanim_id)
    end
end
