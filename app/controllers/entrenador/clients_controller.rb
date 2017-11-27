class Entrenador::ClientsController < Entrenador::BaseController

	def index
		@coach = Coach.find(params[:uid])
		@clients = Clien.where(coach_id: params[:uid])
	end
end