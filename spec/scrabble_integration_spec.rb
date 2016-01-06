require('capybara/rspec')
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes the word and returned it scored') do
    visit('/')
    fill_in('scrabble', :with => 'banana')
    click_button('Score')
    expect(page).to have_content(8)
  end
end
