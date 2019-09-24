class User < ActiveRecord::Base

  has_secure_password 

  PASSWORD_REQUIREMENTES = /\A 
    (?=.{3,}) 
  /x

  validates :password_confirmation, presence: true, format: PASSWORD_REQUIREMENTES
  validates_uniqueness_of :email, presence: true, :case_sensitive => false

  def self.authenticate_with_credentials(email, password)
    @user = User.where("lower(email) = lower(?)", email.split)
    if @user
      return @user
    else
      return nil
    end
  end

end
