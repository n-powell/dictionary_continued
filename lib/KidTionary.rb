class Words
  @@words_array = []

  attr_accessor :dictionary_word
  attr_accessor :dictionary_word_definition

  def initialize (dictionary_word, dictionary_word_definition)
    self.dictionary_word = dictionary_word
    self.dictionary_word_definition = dictionary_word_definition
  end

  def Words.all
    @@words_array
  end

  def save
    @@words_array.push(self)
  end

  def Words.clear
    @@words_array = []
  end
end
