class CreateLanguagesKnowns < ActiveRecord::Migration[5.0]
  def change
    create_table :languages_knowns do |t|
      t.string :user_language

      t.timestamps
    end
  end
end
