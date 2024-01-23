module Substrings
  def self.count_words(string, dictionary)
    string.downcase.split(' ').each_with_object(Hash.new(0)) do |word, hash|
      dictionary.each { |w| hash[w] += 1 if word.include?(w) }
    end
  end
end
