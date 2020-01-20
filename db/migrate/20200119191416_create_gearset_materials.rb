class CreateGearsetMaterials < ActiveRecord::Migration
  def change
    create_table :gearset_materials do |t|
      t.string :name
      t.integer :gearset_id
      t.integer :material_id
    end
  end
end
