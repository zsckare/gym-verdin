class Client::ProfileController < Client::ApplicationController
  layout 'client'
  def index
    @client = Client.find(params[:uid])
  end

  def update
    if @client.update(client_params)
      render json: @client
    end
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_client
    @client = Client.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def client_params
    params.require(:client).permit(:name, :lastname, :phone, :address, :user, :password)
  end
end
