feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: 'Charlotte'
    fill_in :name2, with: 'Mittens'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end
