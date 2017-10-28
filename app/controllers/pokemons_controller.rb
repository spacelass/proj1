class PokemonsController < ApplicationController

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new
		@pokemon.name = params[:pokemon][:name]
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.experience = 0
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to trainer_path(current_trainer.id)
		elsif @pokemon.errors.empty? != true
			render action: "new"
		end
	end

  	def capture
  		pokemon = Pokemon.find(params[:id])
  		pokemon.trainer_id = current_trainer.id
  		pokemon.save
  		redirect_to root_path
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		pokemon.save
		redirect_to trainer_path(current_trainer.id)
	end

	def heal
		pokemon = Pokemon.find(params[:id])
		pokemon.health += 10
		pokemon.save
		redirect_to "/trainers/"+current_trainer.id.to_s
	end

end