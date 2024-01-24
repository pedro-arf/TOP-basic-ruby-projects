def bubble_sort(arr)
  n = arr.length

  loop do
    swapped = false

    (n - 1).times do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end

