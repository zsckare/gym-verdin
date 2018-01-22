class Admin::CoachesController < Admin::ApplicationController
  protect_from_forgery with: :null_session
  before_action :set_coach, only: [:show, :edit, :update, :destroy]
  
  # GET /coaches
  # GET /coaches.json
  def index
    @coaches = Coach.all.order('id DESC')
  end

  # GET /coaches/1
  # GET /coaches/1.json
  def show
  end

  # GET /coaches/new
  def new
    @coach = Coach.new
    @text = "Crear Entrenador"
  end

  # GET /coaches/1/edit
  def edit
    @text = "Editar Entrenador"
  end

  # POST /coaches
  # POST /coaches.json
  def create
    @coach = Coach.new(coach_params)
    @coach.password = params[:coach][:password]
    respond_to do |format|
      if @coach.save
        Blog.create(coach_id: @coach.id)
        format.html { redirect_to admin_coaches_path, notice: 'Se ha creado el entrenador.' }
        format.json { render :show, status: :created, location: @coach }
      else
        format.html { render :new }
        format.json { render json: @coach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coaches/1
  # PATCH/PUT /coaches/1.json
  def update
    respond_to do |format|
      if @coach.update(coach_params)
        format.html { redirect_to @coach, notice: 'Se ha editado correctamente.' }
        format.json { render :show, status: :ok, location: @coach }
      else
        format.html { render :edit }
        format.json { render json: @coach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coaches/1
  # DELETE /coaches/1.json
  def destroy
    @coach.destroy
    respond_to do |format|
      format.html { redirect_to coaches_url, notice: 'Coach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def front
  end

  def login
    @client = Coach.where(user: params[:user]).first
    if @client.password == params[:password]
      puts "ok"
      render json: @client
    else
      render json: {}
    end
  end

  def info
    coach = Coach.find(params[:id])
    dis = Discipline.find(coach.discipline_id)
    blog = Blog.find(coach.id)
    json = {
      name: coach.name,
      discipline: dis.name,
      blog: blog.id
    }
    render json: json
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach
      @coach = Coach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coach_params
      params.require(:coach).permit(:name, :discipline_id, :user, :password)
    end
end
