# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Client.destroy_all
Event.destroy_all


Admin.create(email: "anneypark@gmail.com", password: "1234")

amy = Client.create(first_name: "Amy", last_name: "Sikhammountry", email: "amy@gmail.com", password: "1111")
giulia = Client.create(first_name: "Giulia", last_name: "Cajati", email: "giulia@gmail.com", password: "1111")
melinda = Client.create(first_name: "Melinda", last_name: "Diaz", email: "melinda@gmail.com", password: "1111")
jina = Client.create(first_name: "Jina", last_name: "Strickland", email: "jina@gmail.com", password: "1111")
kalada = Client.create(first_name: "Kalada", last_name: "William-Jumbo", email: "kalada@gmail.com", password: "1111")
kevin = Client.create(first_name: "Kevin", last_name: "Sheehan", email: "kevin@gmail.com", password: "1111")
mark = Client.create(first_name: "Mark", last_name: "Foley", email: "mark@gmail.com", password: "1111")
shannon = Client.create(first_name: "Shannon", last_name: "Nabors", email: "shannon@gmail.com", password: "1111")
adam = Client.create(first_name: "Adam", last_name: "Johnson", email: "adamjohnson@gmail.com", password: "1111")

event1 = Event.create(client_id: amy.id, event_name: "Amy's Family Photos", location_name: "Caboose Commons" ,location_address: "2918 Eskridge Rd, Fairfax, VA 22031" , date: "2020-11-11", time: "25:30", status: "complete", admin_id: 1)
event3 = Event.create(client_id: giulia.id, event_name: "Giulia's Linkedin Portraits", location_name: "Tatte Bakery & Cafe", location_address: "1200 New Hampshire Ave NW, Washington, DC 20036", date: "2020-01-11", time: "13:00", status: "complete",admin_id: 1)
event4 = Event.create(client_id: giulia.id, event_name: "Giulia's Engagement", location_name: "U.S. National Arboretum", location_address: "3501 New York Ave NE Washington, DC 20002", date: "2020-12-11", time: "10:00", status: "complete",admin_id: 1)
event5 = Event.create(client_id: melinda.id, event_name: "Melinda's Family Session", location_name: "Burke Lake Park" , location_address: "7315 Ox Rd, Fairfax Station, VA 22039", date: "2020-06-03" , time: "21:00", status: "editing" , admin_id: 1)
event6 = Event.create(client_id: jina.id, event_name: "Jina's Anniversary Party", location_name: "Dumbarton Oaks", location_address: "3120 R St NW, Washington, DC 20007", date: "2020-12-09" , time: "24:00", status: "editing" , admin_id: 1)
event7 = Event.create(client_id: kalada.id, event_name: "Kalada's Album Cover", location_name: "The Yards Park", location_address: "355 Water St SE, Washington, DC 20003" , date: "2020-09-03" , time: "18:00" , status: "editing", admin_id: 1)
event8 = Event.create(client_id: kevin.id, event_name: "Kevin's Fall Family Photos", location_name: "Manassas National Battlefield Park", location_address: "6511 Sudley Rd, Manassas, VA 20109", date: "2020-10-03" , time: "21:30" , status: "complete", admin_id: 1)
event9 = Event.create(client_id: mark.id, event_name: "Mark's Engagement", location_name: "Meridian Hill Park" , location_address: "16th St NW &, W St NW, Washington, DC 20009" , date: "2020-12-13" , time: "23:30" , status: "complete" , admin_id: 1)
event10 = Event.create(client_id: shannon.id, event_name: "Shannon's Family Session", location_name: "Union Market" , location_address: "1309 5th St NE, Washington, DC 20002", date: "2020-12-01" , time: "20:30" , status: "complete" , admin_id: 1)
event11 = Event.create(client_id: adam.id, event_name: "Adam's Wedding Photos", location_name: "Library of Congress", location_address: "10 First St SE, Washington, DC 20540", date: "2020-11-03" , time: "24:30" , status: "edting", admin_id: 1)
event2 = Event.create(client_id: amy.id, event_name: "Amy's Portraits", location_name: "United States Botanic Garden" ,location_address: "100 Maryland Ave SW, Washington, DC 20001" , date: "2020-11-01", time: "20:30", status: "complete", admin_id: 1)
event12 = Event.create(client_id: melinda.id, event_name: "Melinda's Gender Reveal", location_name: "Claude Moore Park" , location_address: "21668 Heritage Farm Ln, Sterling, VA 20164", date: "2019-06-03" , time: "11:00", status: "complete" , admin_id: 1)


event1.image.attach(
  io: File.open("app/assets/img10.jpg"),
  filename: "img10.jpg",
  content_type: "application/jpeg"
)

event2.image.attach(
  io: File.open("app/assets/amy1.jpg"),
  filename: "amy1.jpg",
  content_type: "application/jpeg"
)

event3.image.attach(
  io: File.open("app/assets/giulia4.jpg"),
  filename: "giulia4.jpg",
  content_type: "application/jpeg"
)

event4.image.attach(
  io: File.open("app/assets/img8.jpg"),
  filename: "img8.jpg",
  content_type: "application/jpeg"
)

event5.image.attach(
  io: File.open("app/assets/img3.jpg"),
  filename: "img3.jpg",
  content_type: "application/jpeg"
)

event6.image.attach(
  io: File.open("app/assets/img4.jpg"),
  filename: "img4.jpg",
  content_type: "application/jpeg"
)

event7.image.attach(
  io: File.open("app/assets/img2.jpg"),
  filename: "img2.jpg",
  content_type: "application/jpeg"
)

event8.image.attach(
  io: File.open("app/assets/img7.jpg"),
  filename: "img7.jpg",
  content_type: "application/jpeg"
)

event9.image.attach(
  io: File.open("app/assets/img9.jpg"),
  filename: "img9.jpg",
  content_type: "application/jpeg"
)

event10.image.attach(
  io: File.open("app/assets/img6.jpg"),
  filename: "img6.jpg",
  content_type: "application/jpeg"
)

event11.image.attach(
  io: File.open("app/assets/img5.jpg"),
  filename: "img5.jpg",
  content_type: "application/jpeg"
)

event12.image.attach(
  io: File.open("app/assets/img11.jpg"),
  filename: "img11.jpg",
  content_type: "application/jpeg"
)



