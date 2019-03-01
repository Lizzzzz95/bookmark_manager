feature 'Deleting a bookmark' do

  scenario 'A user can delete a boookmark' do
    Bookmark.create(url: 'http://www.playoverwatch.com', title: 'Overwatch')
    visit('/bookmarks')
    expect(page).to have_link('Overwatch', href: 'http://www.playoverwatch.com')

    first('.bookmark').click_button('Delete')
    # .bookmark refers to the css class 'bookmark', which we have put on our bookmarks/index.erb

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Overwatch', href: 'http://www.playoverwatch.com')
  end

end
