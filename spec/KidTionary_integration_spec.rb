require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  before() do
    Words.clear
  end

  it ('Takes user input word and adds it to words page.') do
    visit('/')
    fill_in('word', :with => 'turtle')
    click_button('Add the Word!')
    visit('/allwords')
    expect(page).to have_content('turtle')
  end

  it ('Takes user input word and adds it to words page.') do
    visit('/')
    fill_in('word', :with => 'turtle')
    click_button('Add the Word!')
    visit('/word/1')
    fill_in('add_definition', :with => 'hardshell-dog')
    click_button('Add definition')
    visit('/word/1')
    expect(page).to have_content('hardshell-dog')
  end

  it ('Takes user input word and adds it to words page.') do
    visit('/')
    fill_in('word', :with => 'desk')
    click_button('Add the Word!')
    visit('/word/1')
    fill_in('add_definition', :with => 'a place for things')
    click_button('Add definition')
    visit('/word/1')
    expect(page).to have_content('a place for things')
  end

  it ('Takes user input word and adds it to words page.') do
    visit('/')
    fill_in('word', :with => 'poster')
    click_button('Add the Word!')
    visit('/')
    fill_in('word', :with => 'dog')
    click_button('Add the Word!')
    visit('/word/2')
    fill_in('add_definition', :with => 'a very barky cat')
    click_button('Add definition')
    visit('/word/2')
    expect(page).to have_content('a very barky cat')
  end



end
