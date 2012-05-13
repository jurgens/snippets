class User < ActiveRecord::Base
  has_many :boards
  has_many :snippets

  validates :username, :email, presence: true
end
