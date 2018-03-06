# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Show.delete_all
Review.delete_all

s1 = Show.create({
  show_date: 19991231,
  location: "Big Cypress Seminole Indian Reservation",
  setlist: "Meatstick -> Auld Lang Syne \nDown with Disease -> Llama, Bathtub Gin\nHeavy Things\nTwist -> Prince Caspian > Rock and Roll\nYou Enjoy Myself\nCrosseyed and Painless\nThe Inlaw Josie Wales\nSand  -> Quadrophonic Toppling\nSlave to the Traffic Light\nAlbuquerque\nReba\nAxilla\nUncle Pen\nDavid Bowie\nMy Soul\nDrowned -> After Midnight Reprise\nThe Horse > Silent in the Morning > Bittersweet Motel\nPiper -> Free\nLawn Boy\nHold Your Head Up > Love You > Hold Your Head Up\nRoses Are Free\nBug\nAlso Sprach Zarathustra > Wading in the Velvet Sea > Meatstick",
  notes: 'none'
  })

s2 = Show.create({
  show_date: 19971117,
  location: "McNichols Arena",
  setlist: "Tweezer\nReba\nTrain\nSong\nGhost > Fire\nDown with Disease -> Olivia's Pool\nJohnny B. Goode  -> Jesus Just Left Chicago\nWhen the Circus Comes\nYou Enjoy Myself\nCharacter Zero",
  notes: 'none'
  })

s3 = Show.create({
  show_date: 19971122,
  location: "Hampton Coliseum",
  setlist: "Mike's Song -> I Am Hydrogen > Weekapaug Groove\nHarry Hood > Train Song\nBilly Breathes\nFrankenstein > Izabella\nHalley's Comet
  > Tweezer\nBlack-Eyed Katy > Piper\nRun Like an Antelope\nBouncing Around the Room > Tweezer Reprise",
  notes: 'none'
  })

  Review.create({
    score: 10,
    body: 'loved it! sick show.',
    show: s1
    })
  Review.create({
    score: 10,
    body: 'I liked all of the songs',
    show: s1
    })
  Review.create({
    score: 10,
    body: 'this was nice and fun',
    show: s1
    })
  Review.create({
    score: 10,
    body: 'wow, great show!',
    show: s2
    })
  Review.create({
    score: 10,
    body: 'what a show!!!!!!!!',
    show: s2
    })
  Review.create({
    score: 10,
    body: 'amazing show!',
    show: s3
    })
  Review.create({
    score: 9,
    body: 'it was k',
    show: s3
    })
