numbers = [6, 2, 15, 3, 6, 2, 10, 1]

def bubblesort(nums)

  swap_occured = true
  while swap_occured
    # cycling through array again. Reset flag
    swap_occured = false
      nums.each_with_index do |num, i|
        if i != nums.length - 1 #don't run if last element
          if nums[i + 1] < num
            nums[i], nums[i + 1] = nums[i + 1], nums[i]
            swap_occured = true
          end
        end
      end
  end

puts nums

end

bubblesort(numbers)
