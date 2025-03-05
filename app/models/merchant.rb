# == Schema Information
#
# Table name: merchants
#
#  id                :uuid             not null, primary key
#  email             :string           not null
#  company_name      :string           not null
#  merchant_admin_id :uuid             not null
#  timezone          :string           default("UTC"), not null
#  status            :integer          default(0), not null
#  language          :integer          default(0), not null
#  currency          :string           default("USD"), not null
#  country           :string           default("US"), not null
#  commission_rate   :decimal(, )      not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Merchant < ApplicationRecord
  belongs_to :merchant_admin, class_name: "User", foreign_key: "merchant_admin_id"
  has_many :staff, class_name: "User", foreign_key: "merchant_id"
end
