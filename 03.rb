def isprime?(num)
  prime = false
  i = num
  if num == 2
    return true 
  end
  until i == 2 
    i = i - 1
    if num % i == 0
      prime = false
      break
    else
      prime = true
    end    
  end
  prime
end



def prime_facs(num)
  factors = []
  x = 2
  until x > num
    if num % x == 0 && isprime?(x)== true 
      factors << x
      num = num / x
      prime_facs(num)
    end
    x = x + 1
  end
  factors.max
end

p prime_facs(600851475143)