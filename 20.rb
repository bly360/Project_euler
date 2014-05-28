#finished
def add(num)
    sum = 0
    numbers = num.to_s.chars.map(&:to_i)
    numbers.each do |i|
        sum = sum + i
    end
    sum
end


def factorial_sum(num)
    sum = 0
    1.upto(num) do |x|
        fac = (x..num).inject(:*)
        if fac > sum 
            sum = fac
        end
    end
    add(sum)
end

puts factorial_sum(100)