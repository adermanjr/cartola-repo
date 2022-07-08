class CartoleirosController < ApplicationController
  before_action :set_cartoleiro, only: %i[ show edit update destroy ]

  # GET /cartoleiros or /cartoleiros.json
  def index
    @cartoleiros = Cartoleiro.all
  end

  # GET /cartoleiros/1 or /cartoleiros/1.json
  def show
  end

  # GET /cartoleiros/new
  def new
    @cartoleiro = Cartoleiro.new
  end

  # GET /cartoleiros/1/edit
  def edit
  end

  # POST /cartoleiros or /cartoleiros.json
  def create
    @cartoleiro = Cartoleiro.new(cartoleiro_params)

    respond_to do |format|
      if @cartoleiro.save
        format.html { redirect_to cartoleiro_url(@cartoleiro), notice: "Cartoleiro was successfully created." }
        format.json { render :show, status: :created, location: @cartoleiro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cartoleiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartoleiros/1 or /cartoleiros/1.json
  def update
    respond_to do |format|
      if @cartoleiro.update(cartoleiro_params)
        format.html { redirect_to cartoleiro_url(@cartoleiro), notice: "Cartoleiro was successfully updated." }
        format.json { render :show, status: :ok, location: @cartoleiro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cartoleiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartoleiros/1 or /cartoleiros/1.json
  def destroy
    @cartoleiro.destroy

    respond_to do |format|
      format.html { redirect_to cartoleiros_url, notice: "Cartoleiro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartoleiro
      @cartoleiro = Cartoleiro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cartoleiro_params
      params.require(:cartoleiro).permit(:time, :nome, :camisa)
    end
end
