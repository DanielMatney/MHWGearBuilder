class CreateGearsetMaterials < ActiveRecord::Migration
  def change
    create_table :gearset_materials do |t|
      t.string :name
      t.integer :gearset_id
      t.string :head_id
      t.string :chest_id
      t.string :arms_id
      t.string :waist_id
      t.string :legs_id
    end
  end
end