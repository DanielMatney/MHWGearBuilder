class CreateGear < ActiveRecord::Migration
  def change
    create_table :gear do |t|
      t.string :name
      t.string :monster
      t.string :image
      t.integer :user_id
    end
  end
end
