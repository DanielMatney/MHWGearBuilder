class CreateGear < ActiveRecord::Migration
  def change
    create_table :gearsets do |t|
      t.string :name
      t.string :image, default: "https://monsterhunterworld.wiki.fextralife.com/file/Monster-Hunter-World/buff-body-alpha+-set-mhw-wiki-guide2.png"
      t.integer :user_id
      t.integer :recipe_id
    end
  end
end
