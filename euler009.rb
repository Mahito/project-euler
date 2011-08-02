# Pythagorean triplet theory is
# a = m^2 - n^2
# b = 2mn
# c = m^2 + n^2
# m > n
# (m % 2 == 0 && n % 2 == 1) || (m % 2 == 1 && n % 2 == 0)

m = 2
loop{
  1.upto(m) do |n|
    next unless (m % 2 == 0 && n % 2 == 1) || (m % 2 == 1 && n % 2 == 0)
    a = m**2 - n**2
    b = 2*m*n
    c = m**2 + n**2
    if a+b+c == 1000
      p a*b*c
      exit
    end
  end
  m += 1
}
