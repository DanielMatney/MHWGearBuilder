class CreateGearsetMaterials < ActiveRecord::Migration
  def change
    create_table :gearset_materials do |t|
      t.string :name
      t.integer :gearset_id
      t.integer :head_id
      t.integer :chest_id
      t.integer :arms_id
      t.integer :waist_id
      t.integer :legs_id
    end
  end
end