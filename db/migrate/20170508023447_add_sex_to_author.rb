class AddSexToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :sex, :integer
  end
end
