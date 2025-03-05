# == Schema Information
#
# Table name: users
#
#  id                         :uuid             not null, primary key
#  email                      :string           not null
#  email_confirmation_token   :string
#  email_confirmed            :boolean          default(FALSE), not null
#  email_confirmation_sent_at :datetime
#  email_confirmed_at         :datetime
#  password_digest            :string           not null
#  first_name                 :string           not null
#  last_name                  :string           not null
#  platform                   :integer          default(0), not null
#  active                     :boolean          default(TRUE), not null
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  merchant_id                :uuid
#
class User < ApplicationRecord
  belongs_to :merchant, optional: true
  has_secure_password
end
