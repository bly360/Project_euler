def factors(num)
  facs = []
  x = 1
  sum = 0
  until x > num
    if num % x == 0 
      break if num == x
      facs << x
      
    end
    x = x + 1

  end
  facs.each do |x|
    sum = x + sum
  end
    sum
end

p factors(284)

def count(num)
sum = 0
amicable = []
reverse = 0
  1.upto(num) do |x|
    next if amicable.include?(x) 
      reverse = factors(x)
      if factors(reverse) == x && factors(x) == reverse && factors(x) != x
        amicable << factors(x)
        amicable << x
      end
  end
  amicable.each do |add|
    sum = add + sum
  end
  sum

end

p count(10000)