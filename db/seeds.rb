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
chiron.images.create(description: "https://assets.bugatti.com/fileadmin/_processed_/sei/p54/se-image-204c6caaa086fafe35dc6199ebe10880.jpg")
chiron.images.create(description: "https://media.wired.com/photos/5d6ecc7c4697d8000907f2e2/master/pass/Transpo_Bugatti_05_08_ss300p_ehra-lessien.jpg")
chiron.images.create(description: "https://cdn.motor1.com/images/mgl/QE3q0/s3/2021-bugatti-chiron-super-sport-300.jpg")

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
koenigsegg.images.create(description: "https://cdn.images.express.co.uk/img/dynamic/24/590x/Koenigsegg-Agera-RS-1133543.jpg?r=1559138272866")
koenigsegg.images.create(description: "https://upload.wikimedia.org/wikipedia/commons/0/0a/2015_Koenigsegg_Agera_N_%2819886243212%29.jpg")
koenigsegg.images.create(description: "https://cnet1.cbsistatic.com/img/kAGK9x9d3eDLX4eoaryw59DFn6c=/980x551/2016/09/05/aaa38638-24a9-470d-b119-ea5b382a5524/koenigsegg-agera-rs-naraya-1.jpg")

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
mclaren.images.create(description: "https://i.ytimg.com/vi/o6_OHzFosVw/maxresdefault.jpg")
mclaren.images.create(description: "https://cdn.gearpatrol.com/wp-content/uploads/2019/08/McLaren-720S-Spider-Review-gear-patrol-slide-2-1940x1300.jpg")
mclaren.images.create(description: "https://cdn.carbuzz.com/gallery-images/840x560/541000/400/541451.jpg")

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
ferrari.images.create(description: "https://cdn.motor1.com/images/mgl/kL1RR/s1/novitec-n-largo-ferrari-488.jpg")
ferrari.images.create(description: "https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/788x525/quality/85/https://s.aolcdn.com/commerce/autodata/images/USC60FRC211A01301.jpg")
ferrari.images.create(description: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/488pista-1557778038.jpg?crop=0.819xw:1.00xh;0.0929xw,0&resize=640:*")
