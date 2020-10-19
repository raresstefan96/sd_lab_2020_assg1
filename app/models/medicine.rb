class Medicine < ApplicationRecord
  has_many :medical_record_items
  has_many :medical_records, through: :medical_record_items
end
