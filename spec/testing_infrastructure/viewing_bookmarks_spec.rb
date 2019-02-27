feature 'Viewing bookmarks' do

  scenario 'Viewing the index page' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end

end
