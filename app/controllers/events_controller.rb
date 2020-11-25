class EventsController < ApplicationController

  def index
    @events = Event.all
    render :json => @events
  end
  
  def show
    @event = Event.find(params[:id])
    if @event #if there is a user
      render :json => @event
    else
      render json: {
        status: 500,
        errors: ['no such user found']
      }
    end
  end

  def new
  end

  def create

    @event = Event.new(
      client_id: params[:client_id],
      event_name: params[:event_name],
      location_name: params[:location_name],
      location_address: params[:location_address],
      date: params[:date],
      time: DateTime.parse(params[:time]).strftime("%H:%M"),
      status: params[:status],
      admin_id: 1
    )

    if @event.save #if event saves successfully
      render json: {
        event: @event,
        errors: false
      }
    else 
      render json: {
        errors: true,
        info: ["try again"]
      }
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event
      @event.update(
        event_name: params[:event_name], 
        location_name: params[:location_name],
        location_address: params[:location_address],
        date: params[:date],
        time: params[:time],
        status: params[:status])
      render json: {
        errors: false,
        info: ["Event Update"],
        events: Event.all
      }
    else 
      render json: {
        errors: true,
        info: ["try again"]
      }
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: @event
  end


end
