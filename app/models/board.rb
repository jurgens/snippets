class Board < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'

  validates :name, presence: true

  attr_accessible :name
end
