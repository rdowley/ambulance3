class CreateMedrecords < ActiveRecord::Migration
  def change
    create_table :medrecords do |t|
      t.references :patient_id
      t.string :bt
      t.integer :bp
      t.integer :hr
      t.string :defib
      t.string :hc
      t.string :drugs
      t.string :alergies

      t.timestamps
    end

  end
end
