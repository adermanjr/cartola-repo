class PontuacaosController < ApplicationController
  before_action :set_pontuacao, only: %i[ show edit update destroy ]

  skip_before_action  :verify_authenticity_token
  
  # GET /pontuacaos or /pontuacaos.json
  def index
    @pontuacaos = Pontuacao.all
  end

  # GET /pontuacaos/1 or /pontuacaos/1.json
  def show
  end

  # GET /pontuacaos/new
  def new
    @pontuacao = Pontuacao.new
  end

  # GET /pontuacaos/1/edit
  def edit
  end

  # POST /pontuacaos or /pontuacaos.json
  def create
    @pontuacao = Pontuacao.new(pontuacao_params)

    respond_to do |format|
      if @pontuacao.save
        format.html { redirect_to pontuacao_url(@pontuacao), notice: "Pontuacao was successfully created." }
        format.json { render :show, status: :created, location: @pontuacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pontuacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pontuacaos/1 or /pontuacaos/1.json
  def update
    respond_to do |format|
      if @pontuacao.update(pontuacao_params)
        format.html { redirect_to pontuacao_url(@pontuacao), notice: "Pontuacao was successfully updated." }
        format.json { render :show, status: :ok, location: @pontuacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pontuacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pontuacaos/1 or /pontuacaos/1.json
  def destroy
    @pontuacao.destroy

    respond_to do |format|
      format.html { redirect_to pontuacaos_url, notice: "Pontuacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pontuacao
      @pontuacao = Pontuacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pontuacao_params
      params.require(:pontuacao).permit(:cartoleiro_id, :rodada_id, :pontos, :posicao)
    end
end
