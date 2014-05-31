# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
def evenly_div
num = 20

  until (11..20).all?{ |i| num % i == 0 }
    num +=20
  end

  num
end
p evenly_div