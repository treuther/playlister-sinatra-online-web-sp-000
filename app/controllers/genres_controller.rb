class GenresController < ApplicationController

#This should present the user with a list of all genres in the library.
#Each genre should be a clickable link to that particular genre's show page.
  get '/genres' do

  end

#Any given genre's show page should have links to each of its artists and songs.
  get '/genres/:slug' do

  end
end
