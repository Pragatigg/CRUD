class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :class, :standard
  end
end
