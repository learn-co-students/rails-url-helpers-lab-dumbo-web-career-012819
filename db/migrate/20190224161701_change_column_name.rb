class ChangeColumnName < ActiveRecord::Migration
  def change
      rename_column :students, :Active, :active
  end
end
