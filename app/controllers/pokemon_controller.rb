class PokemonController < ApplicationController
  def capture
    @poke = Pokemon.find(params[:id])
    @poke.trainer = current_trainer
    @poke.save
    redirect_to :root
  end
end
