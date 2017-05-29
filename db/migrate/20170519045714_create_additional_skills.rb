class CreateAdditionalSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :additional_skills do |t|
      t.string :skills

      t.timestamps
    end
  end
end
