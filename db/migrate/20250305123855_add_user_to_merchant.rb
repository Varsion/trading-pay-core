class AddUserToMerchant < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :merchant, type: :uuid, null: true, foreign_key: true
  end
end
