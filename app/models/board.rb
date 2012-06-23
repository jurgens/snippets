class Board < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :owner, class_name: 'User'
  has_many :snippets

  validates :name, presence: true, uniqueness: true

  attr_accessible :name
end
