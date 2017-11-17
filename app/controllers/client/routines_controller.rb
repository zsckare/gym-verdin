class Client::RoutinesController < Client::ApplicationController
    def index
        @client = Client.find(params[:uid])
        @coach = Coach.find(@client.coach_id)
        @blog = Blog.find(@coach.id)

    end
    
    def show
        @blog = Blog.find(params[:id])
        @posts = @blog.posts.order("created_at DESC")
    end
    def new
        @superior = Exercise.where(category_id: 1)
        @inferior = Exercise.where(category_id: 2)
        @abdomen = Exercise.where(category_id: 4)
        @cardio = Exercise.where(category_id: 3)
    end

  end
  