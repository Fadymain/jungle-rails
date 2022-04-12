class User < ActiveRecord::Base

  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, case_sensitive: true, presence: true
  validates :password, length: { minimum: 4}, on: :create

end
