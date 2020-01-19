class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :gearset_id
      t.integer :material_id
    end
  end
end
