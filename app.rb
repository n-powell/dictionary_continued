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

post('/word') do
  dictionary_word = params.fetch('dictionary_word')
  dictionary_word_definition = params.fetch('dictionary_word_definition')
  word = Words.new(dictionary_word, dictionary_word_definition)
  @words = Words.all()
  word.save()
  erb(:allwords)
end
