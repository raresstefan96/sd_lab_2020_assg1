class CreateMedicalRecordItem < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_record_items do |t|
      t.integer :prescription
      t.belongs_to :medical_record
      t.belongs_to :medicine
    end
  end
end
