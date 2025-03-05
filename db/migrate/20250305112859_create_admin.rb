class CreateAdmin < ActiveRecord::Migration[8.0]
  def change
    create_table :admins, id: :uuid do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false

      t.jsonb :permissions, null: false, default: {}

      t.timestamps
    end
  end
end
