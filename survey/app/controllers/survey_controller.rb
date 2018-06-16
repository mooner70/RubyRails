class SurveyController < ApplicationController
  def result
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]
    unless session[:count]
      session[:count] = 0
    end
    session[:count] = (session[:count] + 1)
  end

  def index
    render '/survey/index'
  end

end
  