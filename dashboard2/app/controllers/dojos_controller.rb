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
    render 













end
