class Entrenador::ProfileController < Entrenador::BaseController
    layout 'coach'
    protect_from_forgery with: :null_session
    def index
      @coach = Coach.find(params[:uid])
    end
  
    def update
        @coach = Coach.find(params[:uid])
        newpass = "#{params[:coach][:newpass]}"
        @coach.name = "#{params[:coach][:name]}"
        @coach.user = "#{params[:coach][:user]}"
      if @coach.save
        
        if newpass.blank?
        else
            @coach.password = newpass
            @coach.save
        end
        render json: @coach
      end
    end

  
    
  end
  