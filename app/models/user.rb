class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]
  has_attached_file :avatar, :styles => { :thumb => "128x128>", :icon => "32x32>" }, :default_url => "/images/:style/profile.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_many :requests
  has_and_belongs_to_many :ratings

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.avatar = auth.info.image
    end
  end
end
