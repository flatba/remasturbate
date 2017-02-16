class CreateCurationComments < ActiveRecord::Migration[5.0]
  def change
    create_table :curation_comments do |t|
      t.references :curation, foreign_key: true
      t.references :user, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
