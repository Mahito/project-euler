# The only even prime is 2.
prime = [2]
# The other primes are odd numbers.
n = 3

loop{
  add = true
  prime.each do |i|
    # Loop is exited, when squre prime is over n.
    break if i**2 > n

    # If n is divided primes, n isn't prime.
    if n % i == 0
      add = false
      break
    end
  end

  # If n isn't divided primes, n is prime.
  prime << n if add

  if prime.size == 10001
    # Puts answer, when find 10001st prime.
    p n
    break
  else
    # Go to next odd, when don't find 10001st.
    n += 2
  end
}
