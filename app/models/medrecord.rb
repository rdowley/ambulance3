class Medrecord < ActiveRecord::Base
  attr_accessible :alergies, :bp, :bt, :defib, :drugs, :hc, :hr, :patient_id

  belongs_to :patient

    default_scope order: 'medrecords.created_at DESC'
end
