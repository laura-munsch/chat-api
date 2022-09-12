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
    @User = User.new(
      name: params[:name],
      firstname: params[:firstname],
      phone: params[:phone]
    )

    if @User.save
      render json: @User
    else
      render json: { errors: @User.errors }, status: 422
    end
  end
end