class CreateVoitures < ActiveRecord::Migration
  def change
    create_table :voitures do |t|
      t.string :marque
      t.integer :annee
      t.references :Pilote, index: true

      t.timestamps
    end
  end
end
