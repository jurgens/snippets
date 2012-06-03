class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :boards, foreign_key: :owner_id
  has_many :snippets

  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

  validates :username, :email, presence: true

end
