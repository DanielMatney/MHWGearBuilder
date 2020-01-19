Gearset.destroy_all

puts "Seeding database..."
gearset_list = [
  [ "Coral Pukei Alpha", 81831000 ],
  [ "France", 65447374 ],
  [ "Belgium", 10839905 ],
  [ "Netherlands", 16680000 ]
]

gearset_list.each do |name, image, |
  Country.create(name: name, population: population )
end

