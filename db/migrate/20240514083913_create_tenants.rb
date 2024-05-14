class CreateTenants < ActiveRecord::Migration[7.1]
  def change
    create_table :tenants do |t|
      t.string :name
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
