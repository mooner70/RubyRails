class RpgController < ApplicationController
  def index
    if session[:gold]
    else
      session[:gold] = 0
    end
    if session[:activities]
      else
        session[:activities] = []
      end
    puts session[:activities]
    render 'index'

  end

  def farm
    @current = Time.zone.now.strftime("%B %e, %Y %I:%M %p")
    farm_gold = rand(10..20)
    session[:gold] += farm_gold
    session[:activities] << {message: "You earned #{farm_gold} gold from the farm on #{@current}"}
    redirect_to '/'
  end

  def cave
    cave_gold = rand(5..10)
    session[:gold] += cave_gold
    redirect_to '/'
  end

  def casino
    casino_gold = rand(-50..50)
    session[:gold] += casino_gold
    redirect_to '/'
  end

  def house
    house_gold = rand(2..5)
    session[:gold] += house_gold
    redirect_to '/'
  end
end

  
  
  

#   def cave
#     @current = Time.zone.now.strftime("%B %e, %Y %I:%M %p")
#     cave_gold = rand(5..10)
#     session[:gold] += cave_gold
#     session[:activities] << {
# 			message: "Earned #{cave_gold} gold from the cave! - #{@current}",
# 			color: "green"
# 		} 
#     redirect_to '/'
#   end

#   def house
#     @current = Time.zone.now.strftime("%B %e, %Y %I:%M %p")
#     house_gold = rand(2..5)
#     session[:gold] += house_gold
#     session[:activities] << {
# 			message: "Earned #{house_gold} gold from the house! - #{@current}",
# 			color: "green"
# 		}
#     redirect_to '/'
#   end

#   def casino
#     @current = Time.zone.now.strftime("%B %e, %Y %I:%M %p")
#     casino_gold = rand(-50..50)
#     if casino_gold > 0
#       session[:gold] += casino_gold
#       session[:activities] << {
# 			  message: "Earned #{casino_gold} gold from the casino! - #{@current}",
# 			  color: "green"
# 		  }
#     elsif casino_gold < 0
#       @current = Time.zone.now.strftime("%B %e, %Y %I:%M %p")
#       session[:gold] += casino_gold
#       session[:activities] << {
# 			  message: "Lost #{casino_gold} gold to the casino! Ouch!!!- #{@current}",
# 			  color: "red"
# 		  }
#     else
#       @current = Time.zone.now.strftime("%B %e, %Y %I:%M %p")
#       session[:activities] << {
# 			  message: "You didn't win or lose any gold! - #{@current}",
# 			  color: "yellow"
# 		  }
#     end
#     redirect_to '/'
#   end

#   def reset
#     session[:activities] = []
#     session[:gold] = 0
#     redirect_to '/'
#   end
# end