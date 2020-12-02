class EventSerializer

  def initialize(event: nil)
    # byebug
    @event = event
  end

  def serialize_new_event()
    # byebug
    serialized_new_event = serialize_event(@event)
    serialized_new_event.to_json()
  end
  
  
  private 
  
  def serialize_event(event)
    # byebug
    {
      event: {
      id: event.id,
      client_id: event.client_id,
      event_name: event.event_name,
      location_name: event.location_name,
      location_address: event.location_address,
      date: event.date,
      time: event.time, #DateTime.parse(event.time).strftime("%H:%M")
      status: event.status,
      admin_id: 1,
      image: event.images_url(),
      latitude: event.latitude,
      longitude: event.longitude
      }
    }
  end

  
  
end