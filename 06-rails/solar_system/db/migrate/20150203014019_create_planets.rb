class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.text :image
      t.float :orbit
      t.float :mass
      t.float :diameter
      t.float :distance
      t.integer :moons
      t.timestamps # You almost always want to add this line.
    end
  end
end
