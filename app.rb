require 'sinatra'
require 'sinatra/reloader'
require './lib/KidTionary'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word/:id') do
  @word = Words.find(params.fetch("id").to_i)
  erb(:word)
end

get('/allwords') do
  @words = Words.all()
  erb(:allwords)
end

get('/word/:id/add_definition') do
  @word = Words.find(params.fetch('id').to_i)
end

post('/word/:id/add_definition') do
  @word = Words.find(params.fetch('id').to_i)
  new_def = Definition.new(params.fetch('add_definition'))
  @word.add_definition(new_def)
  erb(:index)
end

post('/word') do
  word = params.fetch('word')
  word = Words.new(word)
  @words = Words.all()
  word.save()
  erb(:allwords)
end
