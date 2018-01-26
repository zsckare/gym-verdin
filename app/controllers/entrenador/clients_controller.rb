class Entrenador::ClientsController < Entrenador::BaseController

	def index
		@coach = Coach.find(params[:uid])
		@clients = Client.where(coach_id: params[:uid])
	end
	def show
		@coach = Coach.find(params[:uid])
		@client = Client.find(params[:id])
		@notes = Note.where(client_id: @client.id)
		@routines = Routine.where(client_id: params[:id])
		@data = []
		@routines.group_by(&:exercise).each do |exercise,elements|
			puts exercise
			# d = {
			# 	name:exercise,
			# 	data: elements.count
			# }
			d = [exercise,elements.count]
			@data.push(d)
			
		end

		puts @data

	end

end