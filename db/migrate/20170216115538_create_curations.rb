class CreateCurations < ActiveRecord::Migration[5.0]
  def change
    create_table :curations do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
