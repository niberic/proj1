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
    @poke = Pokemon.create(poke_params)
    @poke.health = 100
    @poke.level = 1
    @poke.trainer = current_trainer
    if @poke.save
      redirect_to current_trainer
    else
      redirect_to action: "new", notice: "Duplicate pokemon name already exists!"
    end
  end
  
  private
  def poke_params
    params.require(:pokemon).permit(:name)
  end
  
end
