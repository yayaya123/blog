class CreatePilotes < ActiveRecord::Migration
  def change
    create_table :pilotes do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
