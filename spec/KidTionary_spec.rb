require "KidTionary"
require "rspec"
require "pry"


describe(Words) do
  before() do
    Words.clear
  end
  describe('Words#initialize') do
    it('returns the word inputted') do
      new_word = Words.new('apple')
      expect(new_word.word).to(eq('apple'))
    end

    it('returns the word inputted') do
      new_word = Words.new('potato')
      expect(new_word.word).to(eq('potato'))
    end

    it('returns the word inputted') do
      new_word = Words.new('potato')
      new_word.add_definition('is a tomato')
      expect(new_word.definitions).to(eq(['is a tomato']))
    end
  end

  describe ('.all') do
    it('returns an array of all words saves in the words array') do
    new_word = Words.new('apple')
    expect(Words.all).to(eq([]))
    end

    it('returns an array of all words saves in the words array') do
    new_word = Words.new('apple')
    new_word.save
    expect(Words.all).to(eq([new_word]))
    end

    it('returns an array of all words saves in the words array') do
    new_word = Words.new('apple')
    new_word.add_definition('barky cat')
    new_word.save
    new_word2 = Words.new('dog')
    new_word2.save
    expect(new_word.definitions).to(eq(['barky cat']))
    end

  end
end
