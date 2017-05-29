class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.string :school_institution_name
      t.integer :percentage

      t.timestamps
    end
  end
end
