class User < ActiveRecord::Base
  has_secure_password

  def new
  end
end
