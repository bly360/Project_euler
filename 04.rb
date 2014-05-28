#finished
def pal(num)
    if num.to_s.split('').reverse! == num.to_s.split('')
        return true
    end
false
end

def pally(x)
    a = x
    ans = 0
    dromes = []
    while a >= 100
    num = x
        while num >= 100
            ans = a * num
            if pal(ans) == true 
                dromes << ans
            end
            #puts "num is #{num} x is #{a}" 
            num = num - 1
        end
        a = a - 1
    end
     dromes.sort[-1]
end
puts pally(999)
