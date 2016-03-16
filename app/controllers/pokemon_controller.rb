class PokemonController < ApplicationController
  def capture
    @poke = Pokemon.find(params[:id])
    @poke.trainer = current_trainer
    @poke.save
    redirect_to :root
  end
  
  def damage
    @poke = Pokemon.find(params[:id])
    @poke.health = @poke.health - 10
    if(@poke.health <= 0)
      @poke.destroy       #Is this a good way to do this? Or should I create a new method?
    else
      @poke.save
    end
    redirect_to Trainer.find_by(id: @poke.trainer_id)     #Is there a better way to do this too?
  end
  
end
