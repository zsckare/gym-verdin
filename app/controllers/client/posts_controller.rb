class Client::PostsController < Client::ApplicationController
   
    
    def show
        @post = Post.find(params[:id])
    
    end
  end
  