class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  GENDER_TYPES = %w[man woman]
  ROLE_TYPES = %w[doctor caregiver patient]

  has_many :patients, class_name: "User", foreign_key: "caregiver_id"
  has_many :medical_records, class_name: "MedicalRecord", foreign_key: "medical_record_id"

  belongs_to :caregiver, class_name: "User", optional: true

  validates :name, presence: true
  validates :address, presence: true
  validates :birthday, presence: true

  validates :gender, inclusion: { in: GENDER_TYPES }, allow_nil: false
  validates :role, inclusion: { in: ROLE_TYPES }, allow_nil: false
end
