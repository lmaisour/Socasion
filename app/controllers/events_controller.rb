class EventsController < ApplicationController
  
  def new
  	@event = Event.new
  end

  def index
  	@events = Event.all
    @users = User.all
  end

  def show
  	@event = Event.find(params[:id])
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end


  private
  
  def event_params
  	params.require(:event).permit(:title,:description,:date,:location,:candy_ids => [])
  end
  
end
