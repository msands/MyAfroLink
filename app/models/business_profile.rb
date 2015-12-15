class BusinessProfile < ActiveRecord::Base
  searchkick word_middle: [:name]
  ratyrate_rateable 'price', 'quality', 'service'

  CATEGORIES = ["Beauty", "Construction & Home Repair", "Education", "Financial Services", "Auto Repair", "Legal Services", "Health & Medical Services", "Catering Services", "Fashion", "Entertainment", "Professional Services", "Real Estate", "Restaurants/Food & Dining", "Marketing Services", "Web Development", "Transportation", "Travel & Tourism", "Event Coordination", "Other"]

  belongs_to :user
  has_many :reviews, as: :reviewable

  has_attached_file :image, :styles => { large: "1280x556#", medium: "350x350#", small: "200x200>", thumb: "262x262#" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :name, :address, :city, :category, presence: true
end
