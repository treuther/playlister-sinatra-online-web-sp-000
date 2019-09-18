# require 'rack-flash'

class SongsController < ApplicationController
# use Rack::Flash

#This should present the user with a list of all songs in the library.
#Each song should be a clickable link to that particular song's show page.
  get '/songs' do
    @songs = Song.all

    erb :'/songs/index'
  end

#Be able to create a song
#Genres should be presented as checkboxes
#Be able to enter the Artist's name in a text field (only one Artist per song.)
  get '/songs/new' do

    erb :'/songs/new'
  end

#Other routes go in here...

#Any given song's show page should have links to that song's artist and the
#each genre associated with the song.
#
  get '/songs/:slug' do

  end

#Be able to change everything about a song, including the genres associated
#with it and its artist.
  get '/songs/:slub/edit' do

  end
end
