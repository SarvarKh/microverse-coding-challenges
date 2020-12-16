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

  if keyboards_sorted[keyboards_sorted.size - 1] + drives_sorted[drives_sorted.size - 1] > b
    return -1
  end

  max_current = 0
  keyboards_sorted.each do |x|
    drives_sorted.each do |y|
      max_current = x + y if x + y > max_current && x + y <= b
    end
  end
  max_current
end

getMoneySpent([3, 1], [5, 2, 8], [10, 2, 3])