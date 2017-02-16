class CreateCurationLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :curation_likes do |t|
      t.references :user, foreign_key: true
      t.references :curation, foreign_key: true

      t.timestamps
    end
  end
end
