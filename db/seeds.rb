require 'open-uri'


Review.destroy_all
Booking.destroy_all
Instrument.destroy_all
User.destroy_all

# create 5 fake users


semyon = User.create(name: 'Sam', email: 'parnik74@yandex.ru', password: '123456')
Hazal = User.create(name: 'Hazal', email: 'Hazal@gamil.com', password: '555555')
egemen = User.create(name: 'Egemen', email: 'egemen@gmail.com', password: '123456')
hakan = User.create(name: 'Hakan', email: 'hakan@gmail.com', password: '123456')
guitar = Instrument.create(style: 'guitar', rate: 10, location: 'Istanbul', description: 'Wow guitar', user: semyon )
#create 20 fake instruments
instrument1 = Instrument.create(style: 'Electric guitar', rate: 10, location: 'Istanbul', description: 'Wow guitar', user: semyon )
file = URI.open('https://images.unsplash.com/photo-1516924962500-2b4b3b99ea02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
instrument1.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument2 = Instrument.create(style: 'Accoustic guitar', rate: 13, location: 'Moscow', description: 'Gibson electric guitar', user: semyon )
file = URI.open('https://images.unsplash.com/photo-1516956566-e9fbebf4842f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
instrument2.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument3 = Instrument.create(style: 'Accoustic guitar', rate: 13, location: 'Paris', description: 'Gibson electric guitar', user: semyon )
file = URI.open('https://images.unsplash.com/photo-1559466170-72a11c6586c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80')
instrument3.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument4 = Instrument.create(style: 'Drum Kit', rate: 25, location: 'Israel', description: 'Evans drum kit', user: Hazal )
file = URI.open('https://images.unsplash.com/photo-1526857833023-721f5005ab32?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
instrument4.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument5 = Instrument.create(style: 'Ukulele', rate: 11, location: 'Berlin', description: 'ukulele by Kalani', user: Hazal )
file = URI.open('https://images.unsplash.com/photo-1584624580583-3e71d78fb7f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
instrument5.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument6 = Instrument.create(style: 'Flute', rate: 16, location: 'Istanbul', description: 'Pro Yamaha Flute', user: egemen )
file = URI.open('https://thumbs.static-thomann.de/thumb/orig/pics/bdb/451251/13651341_800.jpg')
instrument6.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument7 = Instrument.create(style: 'Violin', rate: 22, location: 'Istanbul', description: 'Great Stentor violin', user: Hazal )
file = URI.open('https://www.rimmersmusic.co.uk/images/stentor-1018-i-standard-violin-outfit-1-16-p2132-16308_image.jpg')
instrument7.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument8 = Instrument.create(style: 'Violin', rate: 23, location: 'Istanbul/Beyoglu', description: 'Mendini violin', user: Hazal )
file = URI.open('https://sgwmscdnimages.azureedge.net/60/11-25-2019/4f2da936745825d00.JPG')
instrument8.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument9 = Instrument.create(style: 'Flute', rate: 19, location: 'Istanbul', description: 'great Yamaha Flute', user: Hakan )
file = URI.open('https://images.reverb.com/image/upload/s--lObJR7qr--/a_exif,c_limit,e_unsharp_mask:80,f_auto,fl_progressive,g_south,h_1600,q_80,w_1600/v1509473119/uwg70lxgn9sblexh111t.jpg')
instrument9.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')


instrument10 = Instrument.create(style: 'Ukulele', rate: 10, location: 'Kiyv', description: 'ukulele by Kalani', user: Hakan )
file = URI.open('https://images.reverb.com/image/upload/s--MhOvf43h--/f_auto,t_supersize/v1539721995/bf2ea41jvtgcbkphe86v.jpg')
instrument10.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument11 = Instrument.create(style: 'Drum Kit', rate: 25, location: 'Israel', description: 'Tiger drum kit', user: Hazal )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/71hg3cRh9jL._AC_SL1500_.jpg')
instrument11.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument12 = Instrument.create(style: 'Accoustic guitar', rate: 18, location: 'Moscow', description: 'great Honner guitar', user: Hazal )
file = URI.open('https://i.ebayimg.com/00/s/MTYwMFgxMjAw/z/axYAAOSw~ZlfhcsU/$_57.JPG?set_id=8800005007')
instrument12.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument13 = Instrument.create(style: 'Accoustic guitar', rate: 18, location: 'Istanbul', description: 'Yamaha guitar', user: Hazal )
file = URI.open('https://www.rnrguitars.com/wp-content/uploads/2018/06/APX600-OBB-Front-Fill.jpg')
instrument13.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument14 = Instrument.create(style: 'Electric guitar', rate: 28, location: 'Berlin', description: 'Awesome Ibanez electric guitar', user: Hazal )
file = URI.open('https://cdn3.volusion.com/dpnvc.wjacz/v/vspfiles/photos/4549763165893-3.jpg')
instrument14.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')

instrument15 = Instrument.create(style: 'Bugle', rate: 21, location: 'Berlin', description: 'Hi guys', user: Hazal )
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81sp-xwPPxL._AC_SL1500_.jpg')
instrument15.photos.attach(io: file, filename: 'instrument.jpg', content_type: 'image/jpg')












10.times do
  Booking.create(start_time: Date.today + rand(7), end_time: Date.today + rand(14..60), user: User.all.sample, instrument: Instrument.all.sample)
end
#Review.create(content: "Great!", booking_id:)



