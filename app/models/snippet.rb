class Snippet < ActiveRecord::Base
  belongs_to :user
  belongs_to :board

  validates :name, :body, :board_id, presence: true

  attr_accessible :name, :body, :board_id, :board

  scope :search, lambda{|query| where("name LIKE ?", "%#{query}%") }

  def author_name
    user.username
  end
end
