class CreateMedrecords < ActiveRecord::Migration
  def change
    create_table :medrecords do |t|
      t.references :patient
      t.string :bt
      t.integer :bp
      t.integer :hr
      t.string :defib
      t.string :hc
      t.string :drugs
      t.string :alergies

      t.timestamps
    end
        add_index :medrecords, [:p_pid, :created_at]
  end
end
