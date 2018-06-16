class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
    @count = Dojo.all.count
    puts "\n\n"
    p @count
    puts "\n\n"

  end

end
