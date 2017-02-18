class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    # 追加
    add_column :users, :thumbnails, :string
    add_column :users, :description, :string
  end
end
