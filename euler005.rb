require 'mathn'

ans = 1

Prime.new.each do |prime|
  break if prime > 20

  # the smallest psitive number
  # that is evenly divisble by all of the numbers from 1 to 20
  # is product of rise primes that less than 20.
  n = 1
  ans *= prime while (n*=prime) < 20
end

p ans



