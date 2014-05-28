#finished
def chain(num)
arr = [num]  
x = num
newev = 0
newod = 0
  while x > 1
    x = arr.last
    if x % 2 == 0
      newev = x /2 
      arr << newev
    elsif x == 1
      break
    elsif x % 2 != 0
      newod = (x * 3) + 1
      arr << newod
    end
  end
  arr.count
end


def longest_chain(n)
biggest = 0
x = n
e = n/3
  until x == e
    if chain(x) > biggest
      biggest = chain(x)
      num = x
    end
  x = x - 1
  end
  num
end

p longest_chain(1000000)