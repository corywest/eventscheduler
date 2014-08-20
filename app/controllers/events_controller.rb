class EventsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @instagram = Instagram.tag_recent_media("m3", {count: 18})
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      @event.save
      redirect_to events_path
    else
      flash[:notice] = "You haven't finished filling out the form fields!"
      redirect_to new_event_path(@event.id)
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.valid?
      @event.update_attributes(event_params)
      redirect_to event_path(@event.id)
    else
      flash[:notice] = "You haven't finished filling out the form fields!"
      redirect_to edit_event_path(@event)
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :body, :start_time, :end_time, :start_date, :end_date)
  end
end
