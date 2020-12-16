#!/bin/ruby

# Pseudo code
# 1. Sort descending order
# 2. Two While loops to run on both arrays
# 3. If first element of arrays sum is higher than budget => return -1
# 4. Elsif first element of arrays sum is less than budget => return sum
# 5. If not continue looping


def getMoneySpent(keyboards, drives, b)
  keyboards_sorted = keyboards.sort_by { |x| -x }
  drives_sorted = drives.sort_by { |x| -x }
  budget = b[0]

  return -1 if keyboards_sorted[keyboards_sorted.size - 1] + drives_sorted[drives_sorted.size - 1] > budget

  i = 0
  while i < keyboards_sorted.size
    y = 0
    while y < drives_sorted.size
      current_sum = keyboards_sorted[i] + drives_sorted[y]
      alternative_sum = keyboards_sorted[i + 1] + drives_sorted[y - 1]
      # p "i: #{i}, y: #{y}, current_sum: #{current_sum}, alternative_sum: #{alternative_sum}"
      if current_sum <= budget && current_sum >= alternative_sum
        return current_sum
      elsif current_sum <= budget && current_sum < alternative_sum
        return alternative_sum
      end
      y += 1
    end
    i += 1
  end
end

puts getMoneySpent([3, 1], [5, 2, 8], [10, 2, 3])