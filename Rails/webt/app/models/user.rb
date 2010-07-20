require 'digest/sha1'
class User < ActiveRecord::Base
  
  #Accessor
  attr_accessor :password_confirmation
  attr_protected :password,:enabled
  
  
  # echo "typo" | sha1sum -
  @@salt = '20ac4d290c2293702c64b3b287ae5ea79b26a5c1'
  cattr_accessor :salt
  
  #Callbacks
  def before_save
    debugger
    self.password = User.sha1(password) if !self.password.blank?
    self.enabled  = true
  end
  


  protected
  
  def self.sha1(pass)
    Digest::SHA1.hexdigest("#{salt}--#{pass}--")
  end
  
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
