# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Instrument.destroy_all
Booking.destroy_all

sam = User.create(name: 'Sam', email: 'parnik74@yandex.ru', password: '123456')
hazal = User.create(name: 'Hazal', email: 'hazal@gamil.com', password: '555555')
guitar = Instrument.create(style: 'guitar', rate: 10, location: 'Istanbul', description: 'Wow guitar', user: sam )

Instrument.create(style: 'guitar', rate: 10, location: 'Istanbul', description: 'Wow guitar', user: sam )
Instrument.create(style: 'guitar', rate: 10, location: 'Istanbul', description: 'Wow guitar', user: sam )
Instrument.create(style: 'guitar', rate: 10, location: 'Istanbul', description: 'Wow guitar', user: sam )
Instrument.create(style: 'guitar', rate: 10, location: 'Istanbul', description: 'Wow guitar', user: sam )
Instrument.create(style: 'guitar', rate: 10, location: 'Istanbul', description: 'Wow guitar', user: sam )
puts Instrument.count
Booking.create(user: hazal, instrument: guitar )
#Review.create(content: "Great!", booking_id:)