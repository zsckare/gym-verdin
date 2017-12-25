class Entrenador::CommentsController < Entrenador::ApplicationController
  layout 'coach'
  def index
    @coach = Coach.find(params[:uid])
  end

  def backend
    
    @coach = Coach.find(params[:uid])
    @comments = Comment.where(coach_id: @coach.id)
    @valoraciones = Assessment.where(coach_id: @coach.id)

    datos = {
      comments: @comments,
      valoracion: @valoraciones
    }
    render json: datos
  end
end
