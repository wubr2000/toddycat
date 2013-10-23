class RegistrationController < ApplicationController
	
	# list them all
	def index
		@registrants = Registrant.all.entries
	end	

	def new
		@registrant = Registrant.new
	end

	def edit
		
	end

	def show
		render json: Registrant.find_by(id: params[:id])
	end

	def create
		registrant = Registrant.create(registrant_params)
	end

	def update
	end

	def destroy
		Registrant.find_by(id: params[:id]).destroy
		head :no_content
	end

	def registrant_params
		params.require(:registrant).permit(
			:email,
			:expires_at
		)
	end

end