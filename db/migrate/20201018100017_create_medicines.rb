class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :side_effect
      t.string :unit
      t.integer :dosage
    end
  end
end
