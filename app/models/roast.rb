class Roast < ActiveRecord::Base
  has_many :posts
  has_many :users, through: :posts

  def average_panels_flavor_ratings
      total_rating = 0
      number_of_comments = 0
      self.posts.panels_posts.each do |c|
        total_rating += c.flavor_rating
        number_of_comments +=1
      end
      if number_of_comments == 0
        total_rating = 0
      else
        total_rating/number_of_comments
      end
  end

  def average_panels_originality_ratings
      total_rating = 0
      number_of_comments = 0
      self.posts.panels_posts.each do |c|
        total_rating += c.originality_rating
        number_of_comments +=1
      end
      if number_of_comments == 0
        total_rating = 0
      else
        total_rating/number_of_comments
      end
  end

  def average_panels_aroma_ratings
      total_rating = 0
      number_of_comments = 0
      self.posts.panels_posts.each do |c|
        total_rating += c.aroma_rating
        number_of_comments +=1
      end
      if number_of_comments == 0
        total_rating = 0
      else
        total_rating/number_of_comments
      end
  end

  def average_panels_roast_ratings
      total_rating = 0
      number_of_comments = 0
      self.posts.panels_posts.each do |c|
        total_rating += c.roast_rating
        number_of_comments +=1
      end
      if number_of_comments == 0
        total_rating = 0
      else
        total_rating/number_of_comments
      end
  end

  def average_regular_ratings
      total_rating = 0
      number_of_comments = 0
      self.posts.regulars_posts.each do |c|
        total_rating += c.user_rating
        number_of_comments +=1
      end
      if number_of_comments == 0
        total_rating = 0
      else
        total_rating/number_of_comments
      end
  end

  def average_overall_rating
    return  (self.average_panels_flavor_ratings + self.average_panels_originality_ratings + self.average_panels_aroma_ratings + self.average_panels_roast_ratings) / 4
  end

private

end
