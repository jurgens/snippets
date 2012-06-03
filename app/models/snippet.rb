class Snippet < ActiveRecord::Base
  belongs_to :user

  validates :name, :body, :board_id, presence: true

  attr_accessible :name, :body, :board_id
end
