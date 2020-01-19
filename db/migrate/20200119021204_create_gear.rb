class CreateGear < ActiveRecord::Migration
  def change
    create_table :gear do |t|
      t.string :name
      t.string :image
      t.integer :user_id
      t.array :materials
    end
  end
end
