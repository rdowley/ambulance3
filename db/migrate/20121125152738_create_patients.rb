class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :Pid
      t.string :Pfname
      t.string :Psname
      t.string :Psex
      t.integer :Pcontactno
      t.string :Paddress

      t.timestamps
    end
  end
end
