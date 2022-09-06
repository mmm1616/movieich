class Public::PostMoviesController < ApplicationController
   def index
   
   @post_movies = PostMovie.all

    if params[:situation_id] == nil
    @post_movies = PostMovie.page(params[:page]).per(10)
    else
    post_movies = PostMovie.where(situation_id: params[:situation_id])
    @post_movies = post_movies.page(params[:page]).per(10)
    @situation = Situation.find(params[:situation_id])
    end
    
   end
end
