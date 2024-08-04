class AddDepartmentIdToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :department, foreign_key: true, null: false
  end
end
