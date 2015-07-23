class Person < ActiveRecord::Base
  validates_presence_of :firstname
  validates_presence_of :website
  validates_presence_of :address
  validates_presence_of :user_id
  validates_presence_of :eyecolor
  validates_presence_of :haircolor
  validates_presence_of :height
  validates_presence_of :bust
  validates_presence_of :hips
  belongs_to :user
  has_attached_file :image
  has_attached_file :resource

ratyrate_rateable

  has_many :discernings, dependent: :destroy
end
