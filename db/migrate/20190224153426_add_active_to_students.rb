class AddActiveToStudents < ActiveRecord::Migration
  def change
    add_column :students, :Active, :boolean
  end
end
