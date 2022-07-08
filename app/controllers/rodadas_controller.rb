class RodadasController < ApplicationController
  before_action :set_rodada, only: %i[ show edit update destroy ]

  skip_before_action  :verify_authenticity_token

  # GET /rodadas or /rodadas.json
  def index
    @rodadas = Rodada.all
    @cartoleiros = Cartoleiro.all
  end

  # GET /rodadas/1 or /rodadas/1.json
  def show
  end

  # GET /rodadas/new
  def new
    @rodada = Rodada.new
  end

  # GET /rodadas/1/edit
  def edit
  end

  # POST /rodadas or /rodadas.json
  def create
    @rodada = Rodada.new(rodada_params)

    respond_to do |format|
      if @rodada.save
        format.html { redirect_to rodada_url(@rodada), notice: "Rodada was successfully created." }
        format.json { render :show, status: :created, location: @rodada }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rodada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rodadas/1 or /rodadas/1.json
  def update
    respond_to do |format|
      if @rodada.update(rodada_params)
        format.html { redirect_to rodada_url(@rodada), notice: "Rodada was successfully updated." }
        format.json { render :show, status: :ok, location: @rodada }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rodada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rodadas/1 or /rodadas/1.json
  def destroy
    @rodada.destroy

    respond_to do |format|
      format.html { redirect_to rodadas_url, notice: "Rodada was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rodada
      @rodada = Rodada.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rodada_params
      params.require(:rodada).permit(:nome)
    end
end
