class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.integer :maximum
      t.integer :minimum

      t.timestamps null: false
    end
  end
end
