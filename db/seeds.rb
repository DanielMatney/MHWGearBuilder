Gearset.destroy_all
Material.destroy_all
User.destroy_all
Recipe.destroy_all

puts "Seeding database..."
gearset_list = [
  ["Coral Pukei Alpha +", "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/coral-pukei-alpha+-armor-mhw-wiki-guide.png"],
  ["Rajang Alpha +", "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/rajang-alpha-plus-set-mhw-wiki-guide1.png"],
  ["Safi'jiiva Alpha +", "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/safi'jiiva-alpha+set-mhw-wiki-guide2.png"],
  ["Velkhana Alpha +", "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/velkhana_alpha_plus_armor_set-mhw-wiki-guide.png"]
]

gearset_list.each do |name, url|
  Gearset.create(name: name, image: url, user_id: nil, recipe_id: nil)
end

recipe_list = [
  "Coral Pukei Alpha +",
  "Rajang Alpha +",
  "Safi'jiiva Alpha +",
  "Velkhana Alpha +"
]

recipe_list.each do |name|
  Recipe.create(name: name,  gearset_id: nil, material_id: nil)
end

material_list = [
  "Pukei Lagoon Hat Alpha +",
  "Pukei Lagoon Mail Alpha +",
  "Pukei Lagoon Braces Alpha +",
  "Pukei Lagoon Coil Alpha +",
  "Pukei Lagoon Greaves Alpha +",
  "Golden Headdress Alpha +",
  "Golden Haori Alpha +",
  "Golden Kote Alpha +",
  "Golden Obi Alpha +",
  "Golden Hakama Alpha +",
  "Safi Crested Crown Alpha +",
  "Safi Crested Chest Alpha +",
  "Safi Crested Vambraces Alpha +",
  "Safi Crested Belt Alpha +",
  "Safi Crested Boots Alpha +",
  "Rimeguard Helm Alpha +",
  "Rimeguard Mail Alpha +",
  "Rimeguard Vembraces Alpha +",
  "Rimeguard Coil Alpha +",
  "Rimeguard Greaves Alpha +"
]

material_list.each do |name|
  Material.create(name: name, recipe_id: nil)
end