class PokemonController < ApplicationController
  before_action :set_pokemon, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /pokemon or /pokemon.json
  def index
    @pokemon = Pokemon.all
  end

  # GET /pokemon/1 or /pokemon/1.json
  def show
  end

  # GET /pokemon/new
  def new
    @pokemon = Pokemon.new
  end

  # GET /pokemon/1/edit
  def edit
  end

  # POST /pokemon or /pokemon.json
  def create
    @pokemon = Pokemon.new(pokemon_params)

    respond_to do |format|
      if @pokemon.save
        format.html { redirect_to pokemon_url(@pokemon), notice: "Pokemon was successfully created." }
        format.json { render :show, status: :created, location: @pokemon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemon/1 or /pokemon/1.json
  def update
    respond_to do |format|
      if @pokemon.update(pokemon_params)
        format.html { redirect_to pokemon_url(@pokemon), notice: "Pokemon was successfully updated." }
        format.json { render :show, status: :ok, location: @pokemon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon/1 or /pokemon/1.json
  def destroy
    @pokemon.destroy

    respond_to do |format|
      format.html { redirect_to pokemon_index_url, notice: "Pokemon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pokemon_params
    params.require(:pokemon).permit(:name, :level, :poketype, :notes)
  end
end
