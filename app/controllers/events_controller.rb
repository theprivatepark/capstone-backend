class EventsController < ApplicationController

  def index
    @events = Event.all

    bob = @events.map do |event|
     set_serialized_events(event)
    #  byebug
    end

    render :json => bob
  end
  
  def show
    @event = Event.find(params[:id])
    @client = Client.find_by(id: @event.client_id)
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

  def create
    # @event = Event.create(
    #   client_id: 25,
    #   admin_id: 1,
    #   image: params["image"]
    # )
    @event = Event.create(
      event_params()
      # client_id: params["clientId"],
      # event_name: params["eventName"],
      # location_name: params["locationName"],
      # location_address: params["locationAddress"],
      # date: params["date"],
      # time: DateTime.parse(params["time"]).strftime("%H:%M"),
      # status: params["status"],
      # admin_id: 1,
      # image: params["image"]
      )
      respond_to_event()
      # @event.update(image: params["image"])

      # byebug
    #@event.image.attach(params[:image])

    # if @event.save #if event saves successfully
    #   bob = @event.images_url

    #   render json: {
    #     # event: @event,
    #     errors: false,
    #     # image: bob
    #   }
    # else 
    #   render json: {
    #     errors: true,
    #     info: ["try again"]
    #   }
    # end
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

  private 
  
    def event_params
      params.permit(:client_id, :event_name, :location_name, :location_address, :date, :time, :status, :admin_id, :image, :latitude, :longitude)
    end

    def respond_to_event()
      # byebug
      if @event.valid?()
        event_serializer = EventSerializer.new(event: @event)
        render json: event_serializer.serialize_new_event()
        # byebug
      else
        render json: { errors: @event.errors }, status: 400
      end
    end

    def set_serialized_events(event)
      # event
      # byebug
      if event
        event_serializer = EventSerializer.new(event: event)
        # byebug
        return event_serializer.serialize_new_event()
        # byebug
      # else
      #   render json: { errors: event.errors }, status: 400
      end
    end

 
end