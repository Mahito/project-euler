def fibonacci(n, fib)
  # return cache when value exist
  return fib[n] unless fib[n].nil?

  # recall fibonacci function when cache not exist
  return fib[n] = fibonacci(n-1, fib) + fibonacci(n-2, fib)
end

i = 1
fib = [1, 2]

# loop do to exceed four million
loop{
  if fibonacci(i+=1, fib) > 4e6
    # delete value that exceed four million
    fib.delete_at(-1)
    break
  end
}

# find the sum of the even-valued terms
p fib.inject(0){|s, n|
  s + (n % 2 == 0 ? n : 0)
}
