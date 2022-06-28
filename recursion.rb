# non-recursive fibonacci function (printing out the number
# of sequence numbers equivalent to n)
def fibs(n, arr = [])
  if n == 0
    return arr 
  elsif n == 1
    return arr << 0 
  else
    arr = [0, 1]
    for i in 2...n
      arr << (arr[i - 2] + arr[i - 1])
    end
  end
  arr
end

# recursive fibonacci function (printing out a number of sequence
# numbers equivalent to n)
def fibs_rec(n, arr = [0, 1], i = 2)
  return arr if arr.length == n
  fibs_rec(n, arr << (arr[i - 2] + arr[i - 1]), i + 1)
end

print fibs_rec(8)
puts "\n"


# recursive merge_sort function 
def merge_sort(arr, a = [])
  if arr.length < 2
    return arr
  else
    b = merge_sort(arr.slice(0, arr.length/2))
    c = merge_sort(arr.slice(arr.length/2, arr.length))

    i = 0
    n = 0

    while i < b.length && n < c.length
      if b[i] < c[n]
        a << b[i]
        i += 1
      else
        a << c[n]
        n += 1
      end
    end

    if i >= b.length
      until n >= c.length
        a << c[n]
        n += 1
      end
    else
      until i >= b.length
        a << b[i]
        i += 1
      end
    end
  end
  a
end

arr = [8, 9, 2, 5, 3, 1, 4, 9, 0]
print merge_sort(arr)
puts "\n"