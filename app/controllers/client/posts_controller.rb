class Client::PostsController < Client::ApplicationController
    layout 'client'
    
    def show
        @post = Post.find(params[:id])
    
    end
  end
  