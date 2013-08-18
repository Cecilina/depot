class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  validate :name, presence: true, uniqueness: true
  has_secure_password
end
