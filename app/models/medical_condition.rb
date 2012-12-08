class MedicalCondition < ActiveRecord::Base
  attr_accessible :Alergies, :BloodPressure, :BloodType, :Defibrilator, :DrugsAdministered, :HeartCondition, :HeartRate
  belongs_to :patient

  validates :Patient_Pid, presence:true
  default_scope order: 'medical_conditions.created_at DESC'
end
