class User < ActiveRecord::Base

#default values for super users
  after_initialize :set_default_values

  def set_default_values
    self.panel ||= false
    self.admin ||= false
  end

#user auth &auth
  has_secure_password

#ERD
  has_many :posts
  has_many :activities
  has_many :roasts, through: :comments

#Follower logic
  has_many :active_follows, class_name:   "Follow",
                            foreign_key:  "follower_id",
                            dependent:    :destroy
  has_many :passive_follows, class_name:   "Follow",
                            foreign_key:  "followed_id",
                            dependent:    :destroy

  has_many :following, through: :active_follows, source: :followed
  has_many :followers, through: :passive_follows

  #Follows a user
  def follow(other_user)
    active_follows.create(followed_id: other_user.id) unless following?(other_user)
  end

  #Unfollows a user
  def unfollow(other_user)
    active_follows.find_by(followed_id: other_user.id).destroy
  end

  #Returns true if current user is following the other user
  def following?(other_user)
    following.include?(other_user)
  end

#Validation for forms
  validates :email, presence: true,
                    uniqueness: true
  validates :pref_name, presence: true,
                        uniqueness: true

#Relational Class Methods
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
