class AddColumnToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :note, :string
  end
end
