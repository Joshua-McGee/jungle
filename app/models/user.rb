class User < ActiveRecord::Base

  has_secure_password 

  PASSWORD_REQUIREMENTES = /\A 
    (?=.{3,}) 
  /x

  validates :password_confirmation, presence: true, format: PASSWORD_REQUIREMENTES

  validates :email, presence: true, uniqueness: true

end
