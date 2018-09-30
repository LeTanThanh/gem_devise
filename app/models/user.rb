class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :rememberable
         # :omniauthable,
         # :confirmable,
         # :recoverable,
         # :trackable,
         # :timeoutable,
         # :validatable,
         # :lockable

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, confirmation: true

  def remember_me
    true
  end
end
