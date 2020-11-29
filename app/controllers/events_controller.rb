require 'uri'
require 'open-uri'

class EventsController < ApplicationController

  def index
    @events = Event.all
    render :json => @events
  end
  
  def show
    @event = Event.find(params[:id])
    @client = Client.find_by(@event.client_id)
    if @event #if there is an event
      render json: {
        event: @event,
        daclient: @client
      }
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
    # byebug
    # @event = Event.create(
    #   client_id: 25,
    #   admin_id: 1,
    #   image: params["image"]
    # )
    @event = Event.new(
      client_id: params["clientId"],
      event_name: params["eventName"],
      location_name: params["locationName"],
      location_address: params["locationAddress"],
      date: params["date"],
      time: DateTime.parse(params["time"]).strftime("%H:%M"),
      status: params["status"],
      admin_id: 1,
      image: params["image"]
      )
      # @event.update(image: params["image"])

      # byebug
    #@event.image.attach(params[:image])

    if @event.save #if event saves successfully
      bob = @event.images_url

      render json: {
        # event: @event,
        errors: false,
        image: bob
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
    # @event.images.attach(params[:images])
    # @event.images.attached?

    if @event
      @event.update(
        event_name: params[:event_name], 
        location_name: params[:location_name],
        location_address: params[:location_address],
        date: params[:date],
        time: params[:time],
        status: params[:status],
        image: [])
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
