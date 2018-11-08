class MovieController < ApplicationController
  def search
  	

  	if params[:title] != ""
  		@movies = SearchMovie.new(params[:title]).perform
 	else 
 		@movies = SearchMovie.new("Iron man").perform
 	end
  end

    def home
    end
end

