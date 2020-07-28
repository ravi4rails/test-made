class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.datetime :date
      t.integer :number
      t.text :description

      t.timestamps
    end
  end
end
