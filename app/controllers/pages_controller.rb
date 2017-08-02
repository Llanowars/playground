class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    word = params[:search] 
    unless word.empty?
      @movies = PgSearch.multisearch(word)
    end
  end
end
