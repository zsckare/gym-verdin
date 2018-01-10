class Client::CalculateController < Client::ApplicationController
	layout 'client'
	def index
		@food = Food.all
	end
end