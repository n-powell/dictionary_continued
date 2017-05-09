require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  before() do
    Words.clear
  end
  it ('Takes user input word and adds it to words page.') do
    visit('/')
    fill_in('word', :with => 'turtle')
    click_button('Add the Word!')
    expect(page).to have_content('turtle')
  end


  it ('Takes user input word and adds word to this words unique info page.') do
    visit('/')
    fill_in('word', :with => 'turtle')
    fill_in('definition', :with => 'small')
    click_button('Add the Word!')
    visit('/word/1')
    expect(page).to have_content('turtle')
  end


  it ('Takes user input definition and adds definition to correspondin words unique info page.') do
    visit('/')
    fill_in('word', :with => 'turtle')
    fill_in('definition', :with => 'small')
    click_button('Add the Word!')
    visit('/word/1')
    expect(page).to have_content('small')
  end


  it ('Takes user input word and definition and confirms both are on this words unique info page corresponding to its unique id.') do
    visit('/')
    fill_in('word', :with => 'house')
    fill_in('definition', :with => 'beds')
    click_button('Add the Word!')
    visit('/word/1')
    expect(page).to have_content('bed')
  end
end
