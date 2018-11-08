class MovieController < ApplicationController
  def search
  	@movies = SearchMovie.new(params[:title]).perform
  end

  def home
  end
end
