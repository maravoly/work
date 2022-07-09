class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :cargo
      t.string :cantidad_vacantes
      t.text :description
      t.string :modalidad
      t.date :release_date
      t.string :rango_salarial
      t.string :region
      
      t.timestamps
    end
  end
end
