class UserController < ApplicationController
  def create
    body = request.body
    user = User.create(body)
    render json: user
  end

  def index
    users = User.all
    render json: users
  end

  def show
    params = request.query_parameters.with_indifferent_access
    user_id = params.user_id
    user = User.find(user_id)
    render json: user
  end
end
