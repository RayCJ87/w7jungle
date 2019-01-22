class User < ActiveRecord::Base

  has_secure_password
  # attr_accessible :email, :password_digest
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  # validates :password, presence: true
  # validates :passwaro_confirmation, presence: true

end
