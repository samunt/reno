class User < ActiveRecord::Base
  has_secure_password

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true

  has_many :projects
  has_many :purchases
end
