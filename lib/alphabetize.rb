ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  puts "original array: #{arr}"
  arr.sort_by! do |element|
    if ESPERANTO_ALPHABET.index(element[0]) != nil
      rank = ESPERANTO_ALPHABET.index(element[0])
    else
      rank = 10000
    end
    rank
  end

  counter = 0
  arr.each do |value|
    if counter < arr.length-1
      if value[0] == arr[counter + 1][0]
        if ESPERANTO_ALPHABET.index(value[1]) > ESPERANTO_ALPHABET.index(arr[counter + 1][1])
          temp = value
          arr[counter] = arr[counter + 1]
          arr[counter + 1] = value
        end
      end
      counter += 1
    end
  end

  counter = 0
  arr.each do |value|
    if counter < arr.length-1 && counter <= 6
      if value[4] == arr[counter + 1][4]
        if ESPERANTO_ALPHABET.index(value[5])!= nil && ESPERANTO_ALPHABET.index(arr[counter + 1][5]) != nil
          if ESPERANTO_ALPHABET.index(value[5]) > ESPERANTO_ALPHABET.index(arr[counter + 1][5])
            temp = value
            arr[counter] = arr[counter + 1]
            arr[counter + 1] = value
          end
        end
      end
      counter += 1
    end
  end


  counter = 0
  arr.each do |value|
    if counter < arr.length-1 && counter <= 6
      if value[5] == arr[counter + 1][5]
        if ESPERANTO_ALPHABET.index(value[6])!= nil && ESPERANTO_ALPHABET.index(arr[counter + 1][6]) != nil
          if ESPERANTO_ALPHABET.index(value[6]) > ESPERANTO_ALPHABET.index(arr[counter + 1][6])
            temp = value
            arr[counter] = arr[counter + 1]
            arr[counter + 1] = value
          end
        end
      end
      counter += 1
    end
  end

  puts "final array: #{arr}"
  return arr
end
