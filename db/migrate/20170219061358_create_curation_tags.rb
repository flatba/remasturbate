class CreateCurationTags < ActiveRecord::Migration[5.0]
  def change
    create_table :curation_tags do |t|
      t.references :tag, foreign_key: true
      t.references :curation, foreign_key: true

      t.timestamps
    end
  end
end
