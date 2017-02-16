class CreateCurationVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :curation_videos do |t|
      t.references :curation, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
