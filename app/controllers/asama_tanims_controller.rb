class AsamaTanimsController < ApplicationController
  before_action :set_asama_tanim, only: [:show, :edit, :update, :destroy]

  # GET /asama_tanims
  # GET /asama_tanims.json
  def index
    @asama_tanims = AsamaTanim.all
  end

  # GET /asama_tanims/1
  # GET /asama_tanims/1.json
  def show
  end

  # GET /asama_tanims/new
  def new
    @asama_tanim = AsamaTanim.new
  end

  # GET /asama_tanims/1/edit
  def edit
  end

  # POST /asama_tanims
  # POST /asama_tanims.json
  def create
    @asama_tanim = AsamaTanim.new(asama_tanim_params)

    respond_to do |format|
      if @asama_tanim.save
        format.html { redirect_to @asama_tanim, notice: 'Asama tanim was successfully created.' }
        format.json { render :show, status: :created, location: @asama_tanim }
      else
        format.html { render :new }
        format.json { render json: @asama_tanim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asama_tanims/1
  # PATCH/PUT /asama_tanims/1.json
  def update
    respond_to do |format|
      if @asama_tanim.update(asama_tanim_params)
        format.html { redirect_to @asama_tanim, notice: 'Asama tanim was successfully updated.' }
        format.json { render :show, status: :ok, location: @asama_tanim }
      else
        format.html { render :edit }
        format.json { render json: @asama_tanim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asama_tanims/1
  # DELETE /asama_tanims/1.json
  def destroy
    @asama_tanim.destroy
    respond_to do |format|
      format.html { redirect_to asama_tanims_url, notice: 'Asama tanim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asama_tanim
      @asama_tanim = AsamaTanim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asama_tanim_params
      params.require(:asama_tanim).permit(:asama_adi)
    end
end
