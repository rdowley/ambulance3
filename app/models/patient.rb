class Patient < ActiveRecord::Base
  attr_accessible :Paddress, :Pcontactno, :Pfname, :Psex, :Psname

  has_many :medrecords, dependent: :destroy
end
