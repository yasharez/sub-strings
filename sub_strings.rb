#sub string challenge

def substrings(string, dictionary)
  substring_count = Hash.new
  dictionary.each do |word|
    unless string.index(word)
      unless substring_count[word]
        substring_count[word] = 1
      else
        substring_count[word]++
      end
    end
  end
  substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings('below', dictionary)