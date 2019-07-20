class String
  def first_anagram?(second_string)
    sub_string = []
    dup = self.dup

    
    until sub_string.include?(dup)
      (0...self.length - 1).each do |idx|
        self[idx], self[idx+1] = self[idx+1], self[idx]
        sub_string << self.dup
      end
    end

    p sub_string
    p sub_string.length
    sub_string.include?(second_string)
  end

end

p "cakesz".first_anagram?("yerffej")



# def first_anagrams(str, str2)
#   sub_string = []

#   (0...str.length).each do |i|
#     sub_string.concat(rotate(str[0...i], str[i .. -1]))
#   end

#   p sub_string
#   sub_string.include?(str2)
# end

# def rotate(beg_str, end_str)
#   sub_string = [beg_str + end_str.dup]

#   (0...end_str.length - 1).each do |idx|
#     end_str[idx], end_str[idx+1] = end_str[idx+1], end_str[idx]
#     sub_string << beg_str + end_str.dup
#   end

#   sub_string
# end

# p first_anagrams("cats", "asdlf")