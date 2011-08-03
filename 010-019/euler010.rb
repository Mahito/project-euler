require 'lib/eratosthenes'
p Eratosthenes::sieve(2e6).inject(:+)
