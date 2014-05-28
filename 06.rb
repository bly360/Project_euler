#finished
def sum_sq(num)
sum = 0
sum_of_sq = 0
sq_of_sum = 0 
diff = 0
    (1..num).each do |x|
        sum = x + sum
        squares = x ** 2
        sum_of_sq = squares + sum_of_sq
    end
    sq_of_sum = sum ** 2
    diff = sq_of_sum - sum_of_sq
    diff
end

p sum_sq(100)