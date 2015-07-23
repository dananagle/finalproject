class Discerning < ActiveRecord::Base
  belongs_to :user
  belongs_to :person

  validates :user, presence: true
  validates :person, presence: true
end
