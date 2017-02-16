class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :url
      t.string :title
      t.string :description
      t.string :website
      t.references :user, foreign_key: true
      t.string :thumbnails

      t.timestamps
    end
  end
end
