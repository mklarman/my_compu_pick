class StatesController < ApplicationController

	def index
		@states = State.all
	end

	def show
		@state = State.find_by_id(params[:id])
	end

	def edit
		@state = State.find_by_id(params[:id])
	end

	def update
		@state = State.find(params[:id])
      	if @state.update(state_params)   
        	redirect_to state_path(@state.id)
      	else 
        	render states_path
      	end
	end

	private

	def state_params
		params.require(:state).permit(:three_digit, :four_digit, :name)
	end



	
end
