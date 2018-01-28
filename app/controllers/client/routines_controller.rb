class Client::RoutinesController < Client::ApplicationController
    layout 'client'
    protect_from_forgery with: :null_session
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
        @exercises = []
        @all = []
        Exercise.all.each do |ex|
            @exercises.push(ex.name)
            d = {
                desc: ex.description,
                image: ex.imagen.url
            }
            @all.push(d)
        end
        @client = Client.find(params[:uid])
        @superior = Exercise.where(category_id: 1)
        @inferior = Exercise.where(category_id: 2)
        @abdomen = Exercise.where(category_id: 4)
        @cardio = Exercise.where(category_id: 3)


        

    end
    def created
        ex = params[:exercises]
        code = Digest::SHA1.hexdigest(["#{Date.today} #{Time.now}", rand].join)[0..7].to_s.upcase
        client = params[:client_id]
        puts params[:client_id]
        puts code
        
        ex.each do |e|
            exercise = Exercise.where(name: e).first
            puts "--->#{exercise.name}"
            r = Routine.create(code: code, client_id: client,exercise:exercise.name, exercise_id: exercise.id, category: exercise.category.name)
            puts r.errors.messages
        end

        render json: {}
    #     t.integer  "client_id"
    # t.string   "exercise"
    # t.string   "category"
    # t.datetime "created_at",  null: false
    # t.datetime "updated_at",  null: false
    # t.string   "code"
    # t.string   "exercise_id"
    end
  end
  