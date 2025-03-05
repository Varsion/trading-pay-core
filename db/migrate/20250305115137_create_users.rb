class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :email_confirmation_token
      t.boolean :email_confirmed, null: false, default: false
      t.datetime :email_confirmation_sent_at
      t.datetime :email_confirmed_at
      t.string :password_digest, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :platform, null: false, default: 0, index: true
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
