class TemposController < ApplicationController
  before_action :set_tempo, only: [:show, :update, :destroy]

  # GET /tempos
  def index
    @tempos = Tempo.all

    render json: @tempos
  end

  # GET /tempos/1
  def show
    render json: @tempo
  end

  # POST /tempos
  def create
    @tempo = Tempo.new(tempo_params)

    if @tempo.save
      render json: @tempo, status: :created, location: @tempo
    else
      render json: @tempo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tempos/1
  def update
    if @tempo.update(tempo_params)
      render json: @tempo
    else
      render json: @tempo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tempos/1
  def destroy
    @tempo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tempo
      @tempo = Tempo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tempo_params
      params.require(:tempo).permit(:nome)
    end
end
