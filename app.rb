require 'sinatra/base'
require 'sinatra/flash'
require './lib/bookmark'
require './lib/database_connection'
require './database_connection_setup'
require 'uri'
require './spec/database_helpers'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override
  register Sinatra::Flash

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    # can also use .get(:all) and .to_a
    erb :'bookmarks/index'
  end

  post '/bookmarks' do
    if Bookmark.create(url: params[:url], title: params[:title])
      redirect '/bookmarks'
    else
      flash[:notice] = "You must submit a valid URL."
      redirect '/bookmarks/new'
    end
    erb :'bookmarks/new'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/edit' do
    @bookmark = Bookmark.find(id: params[:id])
    erb :'bookmarks/edit'
  end

  patch '/bookmarks/:id' do
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
