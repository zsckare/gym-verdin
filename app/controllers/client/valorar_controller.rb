class Client::ValorarController < Client::ApplicationController
    layout 'client'
    def index
        @client = Client.find(params[:uid])
        @coach = Coach.find(@client.coach_id)
        @blog = Blog.find(@coach.id)

    end
  end
  