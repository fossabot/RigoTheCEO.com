class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blog_posts

  validates_presence_of :first_name, :username, :gender
  validates :username, uniqueness: { case_sensitive: false }

  enum gender: {
    male: 'M',
    female: 'F',
    other: 'O'
  }

  mount_uploader :picture, ProfilePictureUploader
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_profile_picture

  scope :admins, -> { where(admin: true) }

  def crop_profile_picture
    picture.recreate_versions! if crop_x.present?
  end

  def full_name
    "#{first_name} #{last_name}".strip
  end

  def screen_name
    "#{full_name} (@#{username})".strip
  end

  def get_profile_picture(type = :thumb)
    if picture.file.nil?
      picture.default_url
    else
      picture.url(type)
    end
  end
end
