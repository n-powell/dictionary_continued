class Words
  @@words_array = []

  attr_accessor :dictionary_word
  attr_accessor :dictionary_word_definition
  attr_accessor :id

  def initialize (dictionary_word, dictionary_word_definition)
    self.dictionary_word = dictionary_word
    self.dictionary_word_definition = Definition.new(dictionary_word_definition)
    self.id = @@words_array.length().+(1)
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

  def Words.find (input)
    found_word = nil
    @@words_array.each do |word|
      if word.id().eql?(word)
        found_word = word
      end
    found_word
    end
  end
end

class Definition
  @@definitions_array = []

  attr_accessor :definition

  def initialize(definition)
    self.definition = definition
  end

  def Definition.all
    @@definitions_array
  end

  def Definition.clear
    @@definition_array = []
  end
end
