class Entrenador::BlogsController < Entrenador::BaseController

	def index
		
	end
	def show
		@blog = Blog.find(params[:id])
		@coach = Coach.find(params[:uid])
	end
	def new
		@post = Post.new
		@blog = Blog.find(params[:bid])
		@coach = Coach.find(params[:uid])
	end
	def create
		@post = Post.new(post_params)
		puts "----------"
		puts params[:bid]
		@post.blog_id = params[:bid]
	    respond_to do |format|
	      if @post.save
	        format.html { redirect_to @post, notice: 'Post was successfully created.' }
	        format.json { render :show, status: :created, location: @post }
	      else
	        format.html { render :new }
	        format.json { render json: @post.errors, status: :unprocessable_entity }
	      end
	    end
	end
	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content)
    end
end