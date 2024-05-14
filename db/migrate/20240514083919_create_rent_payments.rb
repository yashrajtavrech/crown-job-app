class CreateRentPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :rent_payments do |t|
      t.decimal :amount
      t.references :tenant, null: false, foreign_key: true
      t.date :due_date
      t.boolean :paid

      t.timestamps
    end
  end
end
