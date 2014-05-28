#finished
def fib(number)
new_array = [1]
fib_num = 1
even = []
sol = 0
    while fib_num < number
        new_array << fib_num
        fib_num = new_array[-1] + new_array[-2]
    end
    new_array.each do |x|
        if x % 2 == 0
            even << x
        end
    end
    even.each do |x|
        sol += x
    end
    sol
end

puts fib(4000000)
