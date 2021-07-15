class V2::PetsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # before_action :set_home, only: %i[show edit update destroy]

  # GET /homes or /homes.json
  def index
    ServiceMesh::Configuration.context.set_attribute("number#{rand}", rand)
    @attributes = ServiceMesh::Configuration.parameter_mapping
  end

  def create
    render json: { status: :ok }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_home
    @home = Home.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def home_params
    params.require(:home).permit(:name)
  end
end
