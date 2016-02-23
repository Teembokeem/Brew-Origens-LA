class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :roast

  def self.panels_posts
    joins(:user).merge(User.panels)
  end

  def self.regulars_posts
    joins(:user).merge(User.regulars)
  end
end
