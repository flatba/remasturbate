class AddColumnToCuration < ActiveRecord::Migration[5.0]
  def change
    add_column :curations, :headline, :string
    add_column :curations, :description, :string
  end
end
