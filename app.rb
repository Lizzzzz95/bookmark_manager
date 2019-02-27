require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    # can also use .get(:all) and .to_a
    erb :'bookmarks/index'
  end

  run! if app_file == $0

end
