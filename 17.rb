def num_of_letters(num)
    hash = {'0' => 0,
    '1'=> 3,
    '2' => 3,
    '3' => 5, 
    '4' => 4,
    '5' => 4,
    '6' => 3,
    '7' => 5, 
    '8' => 5, 
    '9' => 4,
    '10' => 3,
    '11' => 6, 
    '12' => 6, 
    '13' => 8, 
    '14' => 8, 
    '15' => 7, 
    '16' => 7, 
    '17' => 9, 
    '18' => 8, 
    '19' => 8, 
    '20' => 6, 
    '30' => 6, 
    '40' => 5, 
    '50' => 5, 
    '60' => 5, 
    '70' => 7, 
    '80' => 6, 
    '90' => 6, 
    'hundred' => 7,
    'thousand' => 8,
    'and' => 3}
    letter = []
    nums = 0
    1.upto(num) do |x|
        letter = x.to_s.split('')
        p letter

        if letter.count == 2 
            if letter.first == "1"
                key = letter.join('')
                nums = nums + hash[key]
            else
                key = letter[0] + '0'
                nums = nums + hash[key] + hash[letter[1]]
            end

        elsif letter.count == 3

            if letter[1] == '0' && letter[2] == '0'
                nums = nums + hash[letter[0]] + hash['hundred']
            elsif letter[1] == '1' # tens and ones place
                key = letter[1] + letter[2]
                nums = nums + hash[key]
                nums = nums + hash[letter[0]] + hash['hundred'] + hash['and']
            elsif letter[1] == '0'
                nums = nums + hash[letter[2]]
                nums = nums + hash[letter[0]] + hash['hundred'] + hash['and']
            else
                key = letter[1] + '0'
                nums = nums + hash[key] + hash[letter[2]]
                nums = nums + hash[letter[0]] + hash['hundred'] + hash['and']

            end

        elsif letter.count == 4

            nums = nums + hash[letter[0]] + hash['thousand']
           
        else
            nums = nums + hash[letter[0]]
        end
 
    end  
    p nums
end

num_of_letters(1000)