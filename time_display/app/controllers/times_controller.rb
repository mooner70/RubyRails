class TimesController < ApplicationController
  def main
    @date = Time.now.strftime("%B %e, %Y at %I:%M %p")
    render 'times/main'
  end
end
