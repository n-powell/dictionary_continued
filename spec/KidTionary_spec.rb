require "KidTionary"
require "rspec"
require "pry"



describe('Words#initialize') do
  it('returns the word inputted') do
    new_word = Words.new('apple')
    expect(new_word.dictionary_word).to(eq('apple'))
  end

  it('returns the word inputted') do
    new_word = Words.new('potato')
    expect(new_word.dictionary_word).to(eq('potato'))
  end
end
