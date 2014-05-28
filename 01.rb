#finished
def multiples(num)
muls = []
sum = 0
x = 1
    while x < num
            if x % 5 == 0 
                muls << x
            elsif x % 3 == 0 
                muls << x
            end
        x = x + 1
    end

    muls.each do |x|
        sum = sum + x
    end
    sum
end
puts multiples(1000)