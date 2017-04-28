require "KidTionary"
require "rspec"
require "pry"


describe(Words) do

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
      expect(new_word.dictionary_word_definition.definition).to(eq('is a tomato'))
    end
  end

  describe ('.all') do
    it('returns an array of all words saves in the words array') do
    new_word = Words.new('apple','is a cat')
    expect(Words.all).to(eq([]))
    end

    it('returns an array of all words saves in the words array') do
    new_word = Words.new('apple','is a cat')
    new_word.save
    expect(Words.all).to(eq([new_word]))
    end

    it('returns an array of all words saves in the words array') do
    new_word = Words.new('apple','is a cat')
    new_word.save
    new_word2 = Words.new('dog','barky cat')
    new_word2.save
    expect(new_word2.dictionary_word_definition.definition).to(eq('barky cat'))
    end

  end
end
