class Array

  # def my_min #phase 1: big-O(n^2)
  #   min = first
  #   self.each_with_index do |el1, idx1|
  #     self.each_with_index do |el2, idx2|
  #       if idx2 > idx1 && el1 < el2
  #         min = el1 if el1 < min
  #       end
  #     end
  #   end
  #   min
  # end

  def my_min #phase 2: big-O(n)
    min = first
    self.each do |el|
      if el < min
        min = el
      end
    end
    min
  end

  # def my_max #phase 1: O(n^2)
  #   arr = []

  #   (0...self.length).each do |idx1|
  #     (idx1...self.length).each do |idx2|
  #         arr << self[idx1..idx2]        
  #     end
  #   end
  #   arr.map { |sub| sub.sum }.max
  # end

  def my_max #phase 2: time - O(n) space - O(1)
    max_sum = 0

    (1...self.length).each do |i|
      current_sum = self.take(i).sum
      reverse_current_sum = self.drop(i).sum

      if current_sum > max_sum
        max_sum = current_sum
      end

      if reverse_current_sum > max_sum
        max_sum = reverse_current_sum
      end

    end
    max_sum
  end
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p list.my_min

list2 = [2, 3, -6, 7, -6, 7]

p list2.my_max