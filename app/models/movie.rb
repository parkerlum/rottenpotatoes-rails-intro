class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list, sessions)
    if ratings_list.nil?
      if sessions.nil?
        Movie.all
      else
        Movie.where(rating: sessions.keys)
      end
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

  def self.sort_movies_by_title(movies)
    if movies.nil?
      return Movie.all
    else
      return Movie.order(:title)
    end
  end

  def self.check_sorted_title(movies)
    if movies.nil?
      return false
    else
      return movies
    end
  end

  def self.sort_movies_by_dates(movies, session)
    if movies.nil?
      return Movie.all
    else
      return Movie.order(:release_date)
    end
  end

  def self.check_sorted_dates(movies)
    if movies.nil?
      return false
    else
      return movies
    end
  end

  def self.array_to_hash(array)
    if array.nil?
      return []
    else
      Hash[array.map {|v| [v, '1']}]
    end
  end
end