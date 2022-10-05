class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list)
    if ratings_list.nil?
      Movie.all
    else
      Movie.where(rating: ratings_list.keys)
    end
  end

  def self.show_ratings(ratings)
    if ratings.nil?
      return []
    else
      return ratings.keys
    end
  end
    
end