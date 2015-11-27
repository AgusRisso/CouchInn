# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

b=Lodging.create(titulo: "Hogwarts", descripcion: "No se admiten muggles", detalle: "amplio, arquitectura medieval, arbol boxeador, muchas habitaciones, varias torres encantadas",  lodgingtype_id: 2, zona:"Palermo soho", user_id:1, url: "Hogwarts.jpeg", cantidaddehuespedes: 3)
d=Lodging.create(titulo: "Cabaña de Hagrid", descripcion: "Se aceptan animales", detalle: "pequeña pero confortante, ideal para compartir con amigos, una habitacion y mucho bosque", lodgingtype_id: 2, zona:"Magdalena", user_id:3, url: "Hagrid.jpg", cantidaddehuespedes: 1)
e=Lodging.create(titulo: "Casa de Bilbo", descripcion: "fino y elegante", detalle: "Amplio, comodo, dos pisos, tres baños, tres habitaciones, muchas provisiones, galletitas y te ",  lodgingtype_id: 2, zona:"Florencio Varela", user_id:4, url: "hobbitHouse.jpg", cantidaddehuespedes: 1)
