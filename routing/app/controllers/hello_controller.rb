class HelloController < ApplicationController
  def index
    render text: "Hello CodingDojo"
  end
  def sayhello
    render text: "Saying Hello!"
  end
  def joe
    render text: "Saying Hello Joe!"
  end
  def michael
    redirect_to "/say/hello/joe"
  end
  def count
    if session[:count].nil?
      session[:count] = 0
    end
    session[:count] += 1
  end
  def times
    render text: ('You have been here ' + count.to_s + ' times.')
  end
  def reset
    session.clear
    render text: 'Destroyed the session!'
  end
end
