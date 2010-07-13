class User < ActiveRecord::Base
end

# == Schema Information
#
# Table name: users
#
#  id              :integer(4)      not null, primary key
#  Firstname       :string(255)
#  Lastname        :string(255)
#  login           :string(255)
#  password        :string(255)
#  activation_code :string(255)
#  enabled         :boolean(1)
#  created_at      :datetime
#  updated_at      :datetime
#

