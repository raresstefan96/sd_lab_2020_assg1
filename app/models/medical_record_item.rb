class MedicalRecordItem < ApplicationRecord
  belongs_to :medical_record
  belongs_to :medicine
end