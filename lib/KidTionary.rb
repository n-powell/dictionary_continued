class Words
  @@words_array = []

  attr_accessor (:word)
  attr_accessor (:id)
  attr_accessor (:definitions)


  def initialize (word)
    @word = word
    @definitions = []
    @id = @@words_array.length().+(1)
  end

  def Words.all
    @@words_array
  end

  def id
    @id
  end


  def save
    @@words_array.push(self)
  end

  def Words.clear
    @@words_array = []
  end

  def definitions
    @definitions
  end

  def add_definition (definition)
    @definitions.push(definition)
  end

  def Words.find (input)
    found_word = nil
    @@words_array.each do |word|
      if word.id().eql?(input.to_i())
        found_word = word
      end
    end
    found_word
  end
end

class Definition
  @@definitions = []

  attr_accessor (:definition)


  def initialize(definition)
    @definition = definition
  end

  def Definition.all
    @@definitions
  end

  def save
    @@definitions.push(self)
  end


end
