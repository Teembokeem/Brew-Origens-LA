class User < ActiveRecord::Base
  after_initialize :set_default_values

  def set_default_values
    # Only set if time_zone IS NOT set
    self.panel ||= false
    self.admin ||= false
  end

  has_secure_password

  has_many :posts
  has_many :roasts, through: :comments

  validates :email, presence: true, uniqueness: true
  validates :pref_name, presence: true, uniqueness: true

  def self.panels
    where(panel: true)
  end

  def self.regulars
    where(panel: false)
  end

  def self.admin
    where(admin: true)
  end

end
