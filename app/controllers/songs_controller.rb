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
  post '/songs' do
    @song = Song.create(params["song"])
    artist = Artist.all.find do |artist|
      artist.slug == params[:artist][:name].downcase.gsub(' ','-')
    end
    if artist
      artist.songs << @song
    else
      @artist = Artist.create(name: params[:artist][:name])
      @artist.songs << @song
    end

    params[:genres].each do |genre|
      @song.genres << Genre.find(genre)
    end
    redirect to "/songs/#{@song.slug}"
  end
#Any given song's show page should have links to that song's artist and the
#each genre associated with the song.
#
  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    @artist = @song.artist
    erb :'/songs/show'
  end

#Be able to change everything about a song, including the genres associated
#with it and its artist.
  get '/songs/:slub/edit' do

  end
end
