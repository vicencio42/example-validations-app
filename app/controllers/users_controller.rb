class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.as_json
  end

  def create
    user = User.new(
      first_name: params ["first_name"],
      last_name: params ["last_name"],
      email: params ["email"]
    )
    if user.save
      render json: user.as_json
    else 
      render json: {error_message: user.errors.full_messages}, status: 422
  end

  def show
    user = User.find_by(id: params["id"])
    render json: user
  end

  def update
    user = User.find(params[user_id]

    user.first_name = params["first_name"]

end
