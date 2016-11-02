class Game < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :system, presence: true
  validates :year, presence: true
  validates :condition, inclusion: { in: 1..3 }
end
