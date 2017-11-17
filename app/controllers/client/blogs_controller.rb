class Client::BlogsController < Client::ApplicationController
    def index
        @client = Client.find(params[:uid])
        @coach = Coach.find(@client.coach_id)
        @blog = Blog.find(@coach.id)

    end
    
    def show
        @blog = Blog.find(params[:id])
        @posts = @blog.posts.order("created_at DESC")
    end
  end
  