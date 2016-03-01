class User < ActiveRecord::Base
  validates :email_address, :password_digest, presence: true
  has_secure_password
  has_many :links
end
