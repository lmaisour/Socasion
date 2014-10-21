class StaticPagesController < ApplicationController
  def home
  	@event = Event.new if logged_in?
  end

  def contact
  end
end
