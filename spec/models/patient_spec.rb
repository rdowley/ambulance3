# == Schema Information
#
# Table name: patients
#
#  Pid         :integer          not null, primary key
#  Pfname       :string(255)
#  Psname       :string(255)
#  Psex       :string(255)
#  email      :string(255)
#  Pcontactno   :integer
#  Paddress    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Patient do
  pending "add some examples to (or delete) #{__FILE__}"
end