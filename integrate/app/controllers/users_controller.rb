class UsersController < ApplicationController
  def new
    render "users/new"
  end
  def index
    render json: User.all
  end
  def view
    render json: User.find(params[:id])
  end
  def edit
    @users = User.find(params[:id])
    render 'users/edit'
  end
  def create
    User.create(name: params[:name])
    redirect_to '/users'
  end
  def total
    total = User.last
    render text: total.id
  end
    
end

