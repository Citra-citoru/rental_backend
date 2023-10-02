class HouseController < ApplicationController
  def create
    body = request.body
    user = House.create(body)
    render json: user, status: 201
  end

  def index
    users = House.all
    render json: { rental: users }
  end

  def show
    params = request.query_parameters.with_indifferent_access
    house_id = params.house_id
    house = House.find(house_id)
    render json: { rental: house }
  end
end
