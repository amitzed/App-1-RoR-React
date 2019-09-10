# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

chiron = SuperCar.create(
  title: "Bugatti Chiron",
  description: "A mid-engine two-seater sports car developed and manufactured in Molsheim, France by French automobile manufacturer Bugatti Automobiles S.A.S.",
  manufacturer: "Bugatti Automobiles S.A.S.",
  production: "2016–present (Limited to 500)",
  assembly: "France: Molsheim",
  layout: "Mid-engine, all-wheel-drive",
  engine: "8.0 L (488 cu in) quad-turbocharged W16",
  horsepower: "1500",
  predecessor: "Bugatti Veyron",
  source: "https://en.wikipedia.org/wiki/Bugatti_Chiron"
)
chiron.images.create(description: "/app/assets/images/chiron1.jpg")
chiron.images.create(description: "/app/assets/images/chiron2.png")
chiron.images.create(description: "/app/assets/images/chiron3.jpg")

koenigsegg = SuperCar.create(
  title: "Koenigsegg Agera",
  description: "A mid-engine sports car produced by Swedish car manufacturer Koenigsegg.",
  manufacturer: "Koenigsegg Automotive AB",
  production: "March 2011– July 2018",
  assembly: "Ängelholm, Sweden",
  layout: "Rear mid-engine, rear-wheel-drive",
  engine: "5.0 L (305 cu in; 5,000 cc) twin-turbocharged V8",
  horsepower: "1360",
  predecessor: "Koenigsegg CCX",
  source: "https://en.wikipedia.org/wiki/Koenigsegg_Agera#RS"
)
koenigsegg.images.create(description: "/app/assets/images/koenigsegg1.jpeg")
koenigsegg.images.create(description: "/app/assets/images/koenigsegg2.jpg")
koenigsegg.images.create(description: "/app/assets/images/koenigsegg3.jpeg")

mclaren = SuperCar.create(
  title: "McLaren 720S",
  description: "A sports car designed and manufactured by British automobile manufacturer McLaren Automotive. It is the second all-new car in the McLaren Super Series.",
  manufacturer: "McLaren Automotive",
  production: "2017–present",
  assembly: "Woking, Surrey, England",
  layout: "Rear mid-engine, rear-wheel drive",
  engine: "4.0 L M840T twin-turbocharged V8",
  horsepower: "710",
  predecessor: "McLaren 650S",
  source: "https://en.wikipedia.org/wiki/McLaren_720S"
)
mclaren.images.create(description: "/app/assets/images/mclaren1.jpg")
mclaren.images.create(description: "/app/assets/images/mclaren2.jpg")
mclaren.images.create(description: "/app/assets/images/mclaren3.jpg")

ferrari = SuperCar.create(
  title: "Ferrari 488 GTB",
  description: "A mid-engine sports car produced by the Italian automobile manufacturer Ferrari.[3] The car is an update to the 488 with notable exterior and performance changes.",
  manufacturer: "Ferrari",
  production: "2020-present",
  assembly: "Maranello, Italy",
  layout: "Longitudinal rear mid-engine, rear-wheel-drive",
  engine: "3.9 L twin-turbocharged Ferrari F154CD V8",
  horsepower: "710",
  predecessor: "Ferrarri 488 GTB",
  source: "https://en.wikipedia.org/wiki/Ferrari_F8_Tributo"
)
ferrari.images.create(description: "/app/assets/images/ferrari1.jpg")
ferrari.images.create(description: "/app/assets/images/ferrari2.jpg")
ferrari.images.create(description: "/app/assets/images/ferrari3.jpg")
