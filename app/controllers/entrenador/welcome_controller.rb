class Entrenador::WelcomeController < Entrenador::BaseController

	def index
		@coach = Coach.find(params[:uid])
		@blog = @coach.blog
	end
end