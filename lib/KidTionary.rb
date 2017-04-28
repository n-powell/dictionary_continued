class Words
  @@words_array = []

  attr_accessor :dictionary_word
  attr_accessor :dictionary_word_definition

  def initialize (dictionary_word, dictionary_word_definition)
    self.dictionary_word = dictionary_word
    self.dictionary_word_definition = dictionary_word_definition
  end


end
