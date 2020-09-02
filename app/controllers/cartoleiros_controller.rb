class CartoleirosController < ApplicationController
  before_action :set_cartoleiro, only: [:show, :edit, :update, :destroy]

  # GET /cartoleiros
  # GET /cartoleiros.json
  def index
    @cartoleiros = Cartoleiro.all
  end

  # GET /cartoleiros/1
  # GET /cartoleiros/1.json
  def show
  end

  # GET /cartoleiros/new
  def new
    @cartoleiro = Cartoleiro.new
  end

  # GET /cartoleiros/1/edit
  def edit
  end

  # POST /cartoleiros
  # POST /cartoleiros.json
  def create
    @cartoleiro = Cartoleiro.new(cartoleiro_params)

    respond_to do |format|
      if @cartoleiro.save
        format.html { redirect_to @cartoleiro, notice: 'Cartoleiro was successfully created.' }
        format.json { render :show, status: :created, location: @cartoleiro }
      else
        format.html { render :new }
        format.json { render json: @cartoleiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartoleiros/1
  # PATCH/PUT /cartoleiros/1.json
  def update
    respond_to do |format|
      if @cartoleiro.update(cartoleiro_params)
        format.html { redirect_to @cartoleiro, notice: 'Cartoleiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartoleiro }
      else
        format.html { render :edit }
        format.json { render json: @cartoleiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartoleiros/1
  # DELETE /cartoleiros/1.json
  def destroy
    @cartoleiro.destroy
    respond_to do |format|
      format.html { redirect_to cartoleiros_url, notice: 'Cartoleiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartoleiro
      @cartoleiro = Cartoleiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartoleiro_params
      params.require(:cartoleiro).permit(:time, :nome, :camisa)
    end
end
