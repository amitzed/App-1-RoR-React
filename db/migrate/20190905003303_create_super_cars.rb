class CreateSuperCars < ActiveRecord::Migration[5.2]
  def change
    create_table :super_cars do |t|
      t.string :title
      t.string :description
      t.string :manufacturer
      t.string :production
      t.string :assembly
      t.string :layout
      t.string :engine
      t.string :horsepower
      t.string :predecessor
      t.string :source

      t.timestamps
    end
  end
end
