module FunWithStrings
  def palindrome?
    # your code here
    temp1 = self.downcase
    temp2 = self.downcase
    temp2.reverse!
    return true if (temp1.scan(/\w/) == temp2.scan(/\w/))
    false
  end
  def count_words
    # your code here
    wordHash = Hash.new
    wordArray = Array.new
    temp1 = self.downcase
    temp1 = temp1.delete "^a-z0-9", "^ "
    wordArray = temp1.split
    wordArray.each do |i|
      count = wordArray.count(i)
      wordHash[i] = count
    end
    return wordHash
  end
  def anagram_groups
    # your code here
    
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
