require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include 'rubygems.org'
      expect(bookmarks).to include 'youtube.com'
    end

  end

end
