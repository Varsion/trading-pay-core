# == Schema Information
#
# Table name: admins
#
#  id              :uuid             not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  first_name      :string           not null
#  last_name       :string           not null
#  permissions     :jsonb            not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Admin < ApplicationRecord
end
