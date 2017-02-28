class CreatePopulars < ActiveRecord::Migration[5.0]
  def change
    create_table :populars do |t|
      t.references :video, foreign_key: true
      t.date :date
      t.integer :pageview

      t.timestamps
    end
  end
end
