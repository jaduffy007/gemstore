# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Review.delete_all

p1 = Product.create({name:"Azurite",
  description:"Some gems have hidden qualities beyond their luster, beyond their shine... Azurite is one of those gems.",
  shine:8,
  price:110.50,
  rarity:7,
  color: "#CCC",
  faces:14,
  images1:"images/gem-02.jpeg",
  images2:"images/gem-05.jpeg",
  images3:"images/gem-09.jpeg",})

p2 = Product.create({name:"Bloodstone",
  description:"Origin of the Bloodstone is unknown, hence its low value. It has a very high shine and 12 sides, however.",
  shine:9,
  price:22.90,
  rarity:6,
  color:"#EEE",
  faces:12,
  images1:"images/gem-01.jpeg",
  images2:"images/gem-03.jpeg",
  images3:"images/gem-04.jpeg",})

p3 = Product.create({name:"Zircon",
  description:"Zircon is our most coveted and sought after gem. You will pay much to be the proud owner of this gorgeous and high shine gem.",
  shine:70,
  price:1100,
  rarity:2,
  color:"#000",
  faces:6,
  images1:"images/gem-06.jpeg",
  images2:"images/gem-07.jpeg",
  images3:"images/gem-08.jpeg",})

r1 = Review.create({stars:5, body:"Great product", author:"james"})
r2 = Review.create({stars:5, body:"Great product - awesome", author:"markus"})
r3 = Review.create({stars:1, body:"meh", author:"steve"})

p1.reviews << r1
p2.reviews << r2
p2.reviews << r3
