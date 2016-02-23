class User < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :roasts, through: :comments

  validates :email, presence: true, uniqueness: true
  validates :pref_name, presence: true, uniqueness: true

  def self.panel
    where(panel: true)
  end

  def self.regulars
    where(panel: false)
  end

end
