class UsersController < ApplicationController
  def index
    @Users = User.all

    render json: @Users
  end

  def show
    @User = User.find(params[:id])

    render json: @User
  end

  def create
    @User = User.create(
      name: params[:name],
      firstname: params[:firstname],
      phone: params[:phone]
    )

    render json: @User
  end
end