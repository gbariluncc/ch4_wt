# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    
    def show
        id = params[:id] #retrieve movie ID from URI Route
        @movie = Movie.find(id)
        
    end
    def new
       @movie = Movie.new
       # default: render 'new' template
    end
    private
    def movie_params
        params.require(:movie).permit(:title,:rating,:description,:release_date)
    end
end
