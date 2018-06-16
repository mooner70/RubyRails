class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
    @count = Dojo.all.count
    
  end
  
  def create
    dojo = Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    redirect_to '/dojos' if dojo.valid? == true
    if(dojo.valid? == false)
      redirect_to '/dojos/new', alert: dojo.errors.full_messages
    end
  end
  
  def show
    @show = Dojo.find(params[:id])
    @all = Student.all
    render 'show'
  end
  
  def edit
    @edit = Dojo.find(params[:id])
    render 'edit'
  end

  def destroy
    @destroy = Dojo.destroy(params[:id])
    redirect_to '/dojos'
  end

  def update
    @update = Dojo.find(params[:id])
    @update.update(dojo_params)
    redirect_to '/dojos'
  end
  
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end


end
