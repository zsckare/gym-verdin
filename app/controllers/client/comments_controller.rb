class Client::CommentsController < Client::ApplicationController
  protect_from_forgery with: :null_session
    def create
      @comment = Comment.new
      @comment.coach_id = params[:coach_id]
      @comment.value = params[:comment][:value]
      uid = "#{params[:uid]}"
      clie = Client.find(uid)
      @ass = Assessment.where(client_id: clie.id)
      if @ass.count == 0
        Assessment.create(coach_id: params[:coach_id], points: params[:puntos], client_id: clie.id)
      end
        if @comment.save
          render json: @comment
        else
          render json: @comment.errors, status: :unprocessable_entity 
        end
      #
      
      end

      private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:coach_id, :value)
    end
end
