class UserProfile < ActiveRecord::Base
  GENDERS = ["male", "female"]
  TRIBES = ["Zulu", "Maasai", "San Bushmen", "Yoruba", "Xhosa", "Hausa", "Himba", "Oromo", "Kalenjin", "Chaga", "Ashanti", "Mole-Dagbon", "Fante", "Ewe", "Ga-Adangbe", "Guan", "Dagomba", "Kusasi"]

  belongs_to :user
  has_attached_file :image, :styles => { large: "600x600>", medium: "70x70%", small: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :first_name, :last_name, :gender, presence: true

  delegate :email, to: :user
end
