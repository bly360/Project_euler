# By listing the first six prime numbers: 2, 3, 5, 7, 11, 
# and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?


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


def print_prime(place)
    primes_found = 0
    num = 0
    while primes_found != place
        num += 1
        primes_found += 1 if is_prime? num
    end
    num
end



p print_prime(10001)