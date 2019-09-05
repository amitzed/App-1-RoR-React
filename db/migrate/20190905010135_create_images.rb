class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :super_car, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
