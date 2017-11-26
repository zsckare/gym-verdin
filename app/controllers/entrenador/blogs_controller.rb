class Entrenador::BlogsController < Entrenador::BaseController

	def index
		
	end
	def show
		@blog = Blog.find(params[:id])
		@coach = Coach.find(params[:uid])
	end
	def new
		
	end
	def create
		
	end
end