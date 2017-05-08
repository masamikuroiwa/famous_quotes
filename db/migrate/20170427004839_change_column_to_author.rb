class ChangeColumnToAuthor < ActiveRecord::Migration[5.0]
  def change
    change_column :authors, :name, :text, {null: false, limit:255}
    change_column :authors, :country, :text, {limit:255}
  end
end
