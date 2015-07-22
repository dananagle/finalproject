class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ratyrate_rater

    validates_presence_of :name
    has_many :people, dependent: :destroy
    has_many :discernings, dependent: :destroy
end
