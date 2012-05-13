class Snippet < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true
  
  attr_accessible :body
end
