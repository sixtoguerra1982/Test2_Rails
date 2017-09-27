# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Historie.destroy_all
Historie.create(titulo: "Arica y Parinacota",description: "Arica y Parinacota description", url:"http://i68.tinypic.com/2j0kow1.jpg")
Historie.create(titulo: "Antofagasta",description: "Antofagasta description", url:"http://i63.tinypic.com/a41jps.jpg")
Historie.create(titulo: "Atacama",description: "Atacama description", url:"http://i65.tinypic.com/azjpxk.jpg")
Historie.create(titulo: "Coquimbo",description: "Coquimbo description", url:"http://i65.tinypic.com/2cxgms0.jpg")
Historie.create(titulo: "Valparaiso",description: "Valparaiso description", url:"http://i68.tinypic.com/2j0kow1.jpg")