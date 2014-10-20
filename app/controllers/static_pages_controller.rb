class StaticPagesController < ApplicationController
  def home
  	@event = current_user.events.new if logged_in?
  end

  def contact
  end
end
