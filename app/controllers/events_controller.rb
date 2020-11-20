class EventsController < ApplicationController

  def index
    @events = Event.all
    render :json => @events
  end
  
  def show
    event = Event.find(params[:id])
    if @user #if there is a user
      render :json => @user
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
      time: params[:time]
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

  def edit
  end

  def update
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: @event
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :location_name, :location_address, :date, :time)
  end

end
