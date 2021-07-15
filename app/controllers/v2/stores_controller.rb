class V2::StoresController < ApplicationController
  skip_before_action :verify_authenticity_token

  def order
    render json: { id: 1, quantity: 1, petId: 1, status: 'placed' }
  end

  def show
    render json: { id: 1, quantity: 1, petId: 1, status: 'placed' }
  end
end
