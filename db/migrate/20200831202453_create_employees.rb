class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :employee_id
      t.string :password_digest
      t.string :email
      t.string :phone_number
      t.string :job_id

      t.timestamps
    end
  end
end
