# Check 6-digit or 5-digit numbers,
# because the product of two 3-digit numbers are its.
(999**2).downto(1e4) do |n|
  # find palindromic number
  if(n == n.to_s.reverse.to_i)
    # get number of square
    # because it is near the product of two 3-digit numbers
    sqrt = Math.sqrt(n).to_i
    sqrt.downto(100) do |x|
      d, m = n.divmod(x)
      if m == 0 && d.to_s.size == 3
        puts x, d, n
        exit
      end
    end
  end
end
