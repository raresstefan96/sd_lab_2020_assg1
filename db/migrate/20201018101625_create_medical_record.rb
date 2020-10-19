class CreateMedicalRecord < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_records do |t|
      t.belongs_to :user
      t.date :expiry_date
    end
  end
end
