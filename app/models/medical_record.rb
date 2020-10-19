class MedicalRecord < ApplicationRecord
  belongs_to :user
  has_many :medical_record_items
  has_many :medicines, through: :medical_record_items
end