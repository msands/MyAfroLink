class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :confirmable, :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  has_one :user_profile, dependent: :destroy
  has_many :business_profiles
  delegate :first_name, :last_name, :thumbnail_image_url, to: :user_profile

  ratyrate_rater

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.id).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.confirmed_at = Time.now
      #user.first_name = auth.info.first_name
    end
  end

  ##def self.from_omniauth(auth)
  ##  where(provider: auth.provider, uid: auth.id).first_or_create do |user|
  ##    user.email = auth.info.email
  ##    user.password = Devise.friendly_token[0,20]
  ##  end
  ##  data = access_token.info
  ##  user = User.where(:provider => access_token.provider, :uid => access_token.uid).first
  ##  if user
  ##    return user
  ##  else
  ##    registered_user = User.where(:email => access_token.info.email).first
  ##    if registered_user
  ##      return registered_user
  ##    else
  ##      user = User.create(name: data[:"name"],
  ##        provider: access_token.provider,
  ##        email: data["email"],
  ##        uid: access_token.uid,
  ##        password: Devise.friendly_token[0,20])
  ##    end
  ##  end
  ##end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end

  def display_name
    "#{first_name} #{last_name}" if user_profile.present?
  end

end
