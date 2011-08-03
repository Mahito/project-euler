multiples = [*1...1e3]

# meke multiples of 3 or 5 to sum of these.
multiples.delete_if{|x|
  x % 3 != 0 && x % 5 != 0
}

p multiples.inject(:+)
