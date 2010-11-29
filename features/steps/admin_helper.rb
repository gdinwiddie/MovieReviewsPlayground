include Java
  
class AdminHelper
  def initialize
    @javaModel = Java::MoviereviewsAdmin::AdminModel.new
  end
  
  def get_movie_count
    @javaModel.getMovieCount
  end
  
  def add_movie(title)
    @javaModel.addMovie(title)
  end
  
  def movie_list
    @javaModel.getMovieList
  end
  
  def empty_db
    @javaModel.emptyDb
  end
end