class Game < ActiveRecord::Base
  belongs_to :collection
  belongs_to :user, through: :collections
end
