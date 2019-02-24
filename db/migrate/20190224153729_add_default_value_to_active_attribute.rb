class AddDefaultValueToActiveAttribute < ActiveRecord::Migration
  def change
      change_column_default :students, :Active, false
  end
end
