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

  i = 0
  while i < keyboards_sorted.size
    y = 0
    while y < drives_sorted.size
      
      # p "i: #{i}, y: #{y}"
      y += 1
    end
    i += 1
  end
end

getMoneySpent([3, 1], [5, 2, 8], [10, 2, 3])