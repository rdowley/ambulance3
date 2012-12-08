class CreateMedicalConditions < ActiveRecord::Migration
  def change
    create_table :medical_conditions do |t|
      t.string :BloodType
      t.integer :BloodPressure
      t.integer :HeartRate
      t.string :Defibrilator
      t.string :HeartCondition
      t.string :DrugsAdministered
      t.string :Alergies

      t.timestamps
    end
    add_index :medical_conditions, [:Patient_Pid, :created_at]
  end
end
