
def pag
  final = 1000
  min = Math.sqrt(final).to_i
  max = final / 2

  (min..max).each do |a|
    ((a + 1)..max).each do |b|
      c = Math.sqrt(a**2 + b**2)
      sum = a + b + c
      if sum > final
        break
      elsif sum == final && (a**2 + b**2 == c**2)
        puts a * b * c
        break
      end 
    end
  end
end

p pag