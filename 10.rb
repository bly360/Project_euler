def is_prime?(number)
    if number == 0 || number == 1
        return false
    end
    integers = *(2..Math.sqrt(number).round)
    integers.each do |i|
        if number % i == 0
            return false
        end
    end
    true
end
def prime_sums(num)
  sum = 0
  2.upto(num) do |x|
    if is_prime?(x) 
      sum = sum + x
    end
    x = x + 1
  end
  sum
end

p prime_sums(2_000_000)