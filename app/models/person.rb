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
  validates_attachment_content_type :image,
  content_type:  /^image\/(png|gif|jpeg)/,
  message: "Only images allowed"

  validates_attachment_content_type :resource,
  content_type: ['application/pdf'],
  message: "Only pdfs allowed"

  validates :image, attachment_presence: false
  validates :resource, attachment_presence: false


ratyrate_rateable

  has_many :discernings, dependent: :destroy
end
