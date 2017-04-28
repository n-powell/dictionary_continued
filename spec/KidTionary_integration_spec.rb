require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it ('Takes user input number and returns coin results.') do
    visit('/')
    fill_in('dictionary_word', :with => 'turtle')
    click_button('Add the Word!')
    expect(page).to have_content('turtle')
  end


  it ('Takes user input number and returns coin results.') do
    visit('/')
    fill_in('dictionary_word', :with => 'turtle')
    fill_in('dictionary_word_definition', :with => 'small')
    click_button('Add the Word!')
    visit('/word/1')
    expect(page).to have_content('turtle')
  end

end
