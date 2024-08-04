class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, index: { unique: true }
      t.string :designation, null: false
      # t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
