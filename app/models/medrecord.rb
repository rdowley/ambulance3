class Medrecord < ActiveRecord::Base
  attr_accessible :alergies, :bp, :bt, :defib, :drugs, :hc, :hr, :p_pid

  belongs_to :patient

    default_scope order: 'medrecords.created_at DESC'
end
