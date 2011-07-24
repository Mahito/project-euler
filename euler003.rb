require 'mathn'

n, m = 600851475143, 0
prime = Prime.new

# divide n in prime number untile n less than m
while n > m do
  m =  prime.succ
  n /= m if(n % m == 0)
end
p m
