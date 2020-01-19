class CreateGear < ActiveRecord::Migration
  def change
    create_table :gearsets do |t|
      t.string :name
      t.string :image
      t.integer :user_id
      t.integer :recipe_id
    end
  end
end
