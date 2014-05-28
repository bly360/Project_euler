#finished
def sum_of_digs(num)
numbers = num.to_s.chars.map(&:to_i)
sum = 0
  numbers.each do |x|
    sum = x + sum
  end
  sum
end

p sum_of_digs(2**1000)

