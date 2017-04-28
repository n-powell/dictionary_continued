require "KidTionary"
require "rspec"
require "pry"



describe('Words#initialize') do
  it('returns the word inputted') do
    new_word = Words.new('apple','')
    expect(new_word.dictionary_word).to(eq('apple'))
  end

  it('returns the word inputted') do
    new_word = Words.new('potato','')
    expect(new_word.dictionary_word).to(eq('potato'))
  end

  it('returns the word inputted') do
    new_word = Words.new('potato','is a tomato')
    expect(new_word.dictionary_word_definition).to(eq('is a tomato'))
  end
end
