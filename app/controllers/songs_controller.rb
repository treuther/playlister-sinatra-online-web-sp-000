require 'rack-flash'

class SongsController < ApplicationController
use Rack::Flash

#This should present the user with a list of all songs in the library.
#Each song should be a clickable link to that particular song's show page.
  get '/songs' do

  end

  get '/songs/new' do

  end

#Other routes go in here...

#Any given song's show page should have links to that song's artist and the
#each genre associated with the song.
#
  get '/songs/:slug' do

  end
end
