class EventsController < ApplicationController
  def index
    @events = Event.all
    @events = Event.order('created_at DESC')
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to events_path
  end

  private
    def event_params
      params.require(:event).permit(:event_name, :event_location, :event_description, :event_site)
    end
end
