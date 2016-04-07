# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Amenity.delete_all
Amenity.create([{name: "Guest Room"},{name: "Camp Site"},{name: "Picnic Table"},
  {name: "WiFi"},{name: "Trails"},{name: "Pond"},{name: "Woodland"},
  {name: "Lake"},{name: "Pets Allowed"},{name: "Bicycles"}])

Activity.delete_all
Activity.create([{name: "Horseback Riding"},{name: "Pick-Your-Own"},{name: "Milking"},
  {name: "Swimming"},{name: "Hiking"},{name: "Biking"},{name: "Felting"},{name: "Herbal Walks"},
  {name: "Pet Farm Animals"},{name: "Kayaking / Canoeing"},{name: "Golf"}])
