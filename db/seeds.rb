# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

names = ["Madrid", "Barcelona", "Valencia", "Sevilla", "Bilbao", "A Coruña", "Mallorca"]
names.each { |name| City.create(name: name) }