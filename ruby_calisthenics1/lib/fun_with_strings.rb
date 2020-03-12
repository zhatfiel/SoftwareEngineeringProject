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
    arrayOfGroups = Array.new
    # return empty array if self is empty
    return arrayOfGroups if self.empty?
    wordArray = Array.new
    temp1 = self.downcase
    temp1 = temp1.delete "^a-z0-9", "^ "
    wordArray = temp1.split
    wordArray.each do |word|
      var1 = "hello".split(%r{\s*})
      var2 = "olleh".split(%r{\s*})
      var1 = var1.sort
      var2 = var2.sort
      puts var1.to_s
      puts var2.to_s
      print "var1.eql?(var2): "
      puts var1.eql?(var2)
    end
    #arr = self.split(" ")
    #arr = arr.group_by{|x| x.each_char.sort}.values
    #return arr
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
