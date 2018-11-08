class SearchMovie

	def initialize (title)
		@title = title
	end

	def perform
		Tmdb::Api.key(Rails.application.credentials.dig(:tmdb_api_key))
		@movies = Tmdb::Movie.find(@title)
	end
end