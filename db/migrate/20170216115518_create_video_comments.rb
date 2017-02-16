class CreateVideoComments < ActiveRecord::Migration[5.0]
  def change
    create_table :video_comments do |t|
      t.references :video, foreign_key: true
      t.references :user, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
