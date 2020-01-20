Gearset.destroy_all
Material.destroy_all
User.destroy_all
GearsetMaterial.destroy_all

puts "Seeding database..."

user = User.create(username: "admin", password: "password")

gearset_list = [
  ["Coral Pukei Alpha +", "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/coral-pukei-alpha+-armor-mhw-wiki-guide.png"],
  ["Rajang Alpha +", "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/rajang-alpha-plus-set-mhw-wiki-guide1.png"],
  ["Safi'jiiva Alpha +", "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/safi'jiiva-alpha+set-mhw-wiki-guide2.png"],
  ["Velkhana Alpha +", "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/velkhana_alpha_plus_armor_set-mhw-wiki-guide.png"]
]

gearset_list.each do |name, url|
  Gearset.create(name: name, image: url, user_id: user.id, gearset_materials_id: nil)
end

gearset_materials_list = [
  "Coral Pukei Alpha +",
  "Rajang Alpha +",
  "Safi'jiiva Alpha +",
  "Velkhana Alpha +"
]

gearset_materials_list.each do |name|
  GearsetMaterial.create(name: name,  gearset_id: nil, material_id: nil)
end

material_list = [
  ["Pukei Lagoon Hat Alpha +", "head"],
  ["Pukei Lagoon Mail Alpha +", "chest"],
  ["Pukei Lagoon Braces Alpha +", "arms"],
  ["Pukei Lagoon Coil Alpha +", "waist"],
  ["Pukei Lagoon Greaves Alpha +", "legs"],
  ["Golden Headdress Alpha +", "head"],
  ["Golden Haori Alpha +", "chest"],
  ["Golden Kote Alpha +", "arms"],
  ["Golden Obi Alpha +", "waist"],
  ["Golden Hakama Alpha +", "legs"],
  ["Safi Crested Crown Alpha +", "head"],
  ["Safi Crested Chest Alpha +", "chest"],
  ["Safi Crested Vambraces Alpha +", "arms"],
  ["Safi Crested Belt Alpha +", "waist"],
  ["Safi Crested Boots Alpha +", "legs"],
  ["Rimeguard Helm Alpha +", "head"],
  ["Rimeguard Mail Alpha +", "chest"],
  ["Rimeguard Vembraces Alpha +", "arms"],
  ["Rimeguard Coil Alpha +", "waist"],
  ["Rimeguard Greaves Alpha +", "legs"]
]

material_list.each do |name, slot|
  Material.create(name: name, slot: slot, gearset_materials_id: nil)
end

puts "Done!"