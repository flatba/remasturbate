class AddColumnToCurationVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :curation_videos, :headline, :string
    add_column :curation_videos, :description, :string
  end
end
