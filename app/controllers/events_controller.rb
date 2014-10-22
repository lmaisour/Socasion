class EventsController < ApplicationController
  before_action :logged_in_user
  
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
   @event = current_user.events.create(event_params)
    if @event.save
      flash[:success] = "Event created!"
      redirect_to root_url
    else
      render new
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:success] = "Event Deleted"
    redirect_to request.referrer || root_url
  end

  def attend
    @event = Event.find(params[:id])
    current_user.events << @event
    redirect_to @event, notice: 'You are now attending this event'
  end

  def withdraw
    event    = Event.find(params[:id])
    attendee = Attendee.find_by(user_id: current_user.id, event_id: event.id)

    if attendee.blank?
      redirect_to event
    end
    attendee.delete
    redirect_to event, notice: 'You are no longer attending this event.'
  end


  private
  
  def event_params
  	params.require(:event).permit(:title,:description,:date,:location,:user_ids => [])
  end
  
end
