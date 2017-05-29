class CreateLanguagesCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :languages_collections do |t|
      t.text :lang_coll

      t.timestamps
    end
  end
end
