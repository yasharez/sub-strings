#sub string challenge

def substrings(string, dictionary)
  stringArr = string.split(' ')
  substring_count = Hash.new
  stringArr.each do |array_item|
    dictionary.each do |word|
      if array_item.index(word)
        unless substring_count[word]
          substring_count[word] = 1
        else
          substring_count[word] += 1
        end
      end
    end
  end
  substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)