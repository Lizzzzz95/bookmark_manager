feature 'Viewing bookmarks' do

  scenario 'Viewing the index page' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end

  scenario 'Viewing bookmarks list' do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.twitter.com'
  end

end
