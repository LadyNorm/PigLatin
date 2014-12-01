module PigLatin
  def self.to_pig_latin(word)
    case word
    when /\Ay/
      match = /\Ay/.match(word)
      ending = word.slice!(0) + "ay"
      word + ending
    when /\A[^aeiouy]+/
      match = /\A[^aeiouy]+/.match(word)
      consonant_length = match.to_s.length
      ending = word.slice!(0, consonant_length) + "ay"
      word + ending
    else
      word + "way"
    end
  end
end