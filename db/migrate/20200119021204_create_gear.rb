class CreateGear < ActiveRecord::Migration
  def change
    create_table :gearsets do |t|
      t.string :name
      t.string :image
      t.integer :user_id
      t.text :materials
    end
  end
end
