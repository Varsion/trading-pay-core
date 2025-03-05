class CreateMerchants < ActiveRecord::Migration[8.0]
  def change
    create_table :merchants, id: :uuid do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :company_name, null: false
      t.references :merchant_admin, type: :uuid, null: false, foreign_key: { to_table: :users }, index: { unique: true }
      t.string :timezone, null: false, default: "UTC"
      t.integer :status, null: false, default: 0, index: true
      t.integer :language, null: false, default: 0
      t.string :currency, null: false, default: "USD"
      t.string :country, null: false, default: "US"
      t.decimal :commission_rate, null: false

      t.timestamps
    end
  end
end
