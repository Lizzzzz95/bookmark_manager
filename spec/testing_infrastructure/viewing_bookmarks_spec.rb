feature 'Viewing bookmarks' do

  scenario 'Viewing the index page' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end

  scenario 'Viewing bookmarks list' do
    visit('/bookmarks')
    expect(page).to have_content 'rubygems.org'
    expect(page).to have_content 'youtube.com'
  end

end
