def name_val(name)
i = 1
letter_hash = {}

    ("A".."Z").each do |x|
        letter_hash[x] = i
        i = i + 1
    end
      letter_points = 0
  name = name.split("")

  name.each do |letter|
    letter_hash.each do |key, val|
      if letter == key
        letter_points += val
      end
    end
  end
  return letter_points
end


def total
    words = File.open('names.txt')
    names = words.read


    names.gsub!("\"","")
    names = names.split(',')
    names.sort!
    sum = 0
    j = 1
    names.each do |name|
        sum += name_val(name) * j
        j += 1
    end
    return sum
end




puts total

