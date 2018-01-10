class Entrenador::ClientsController < Entrenador::BaseController

	def index
		@coach = Coach.find(params[:uid])
		@clients = Client.where(coach_id: params[:uid])
	end
	def show
		@coach = Coach.find(params[:uid])
		@client = Client.find(params[:id])
		@notes = Note.where(client_id: @client.id)
	end

end