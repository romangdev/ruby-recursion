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

print fibs(8)
puts "\n"
print fibs_rec(8)