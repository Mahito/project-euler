module Eratosthenes
  # The primes are odd number except 2.
  def self.sieve(max=0, primes=[2], n=3)
    while n < max do
      # If n is divided prime, n isn't prime.
      add = true
      primes.each do |i|
        break if i**2 > n
        if n % i == 0
          add = false
          break
        end
      end

      primes << n if add
      n += 2
    end

    return primes
  end

  # The primes are odd number except 2.
  def self.sieve_size(max_size=0, primes=[2], n=3)
    while primes.size < max_size do
      # If n is divided prime, n isn't prime.
      add = true
      primes.each do |i|
        break if i**2 > n
        if n % i == 0
          add = false
          break
        end
      end

      primes << n if add
      n += 2
    end

    return primes
  end
end
