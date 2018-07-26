class Article < ActiveRecord::Base
	belongs_to :user

	#don't touch this comments
	has_many :comments
	
  validates :title, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  acts_as_votable
end

