class Board < ActiveRecord::Base
  belongs_to :owner

  validates :name, presence: true

  attr_accessible :name
end
