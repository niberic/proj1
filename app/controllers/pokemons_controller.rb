class PokemonsController < ApplicationController
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
  
  def new
    @poke = Pokemon.new
  end
  
  def create
    # @poke = Pokemon.new(name: params[:name], level: 1, health: 100)
    @poke = Pokemon.create(poke_params)
    @poke.health = 100
    @poke.level = 1
    @poke.trainer = current_trainer
    @poke.save
    # redirect_to Trainer.find_by(id: @poke.trainer_id)     #Is there a better way to do this too?
    redirect_to current_trainer
  end
  
  private
  def poke_params
    params.require(:pokemon).permit(:name)
  end
  
end
