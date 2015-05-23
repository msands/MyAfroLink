class UserProfile < ActiveRecord::Base
  GENDERS = ["male", "female"]
  TRIBES = ["Tribe 1", "Tribe 2", "Tribe 3", "Other"]

  belongs_to :user

  validates :first_name, :last_name, presence: true

  delegate :email, to: :user
end
