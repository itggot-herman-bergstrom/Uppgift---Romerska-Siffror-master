def romanize(value)
  res = ""
  raise ArgumentError, "can not encode zero" if value == 0
  raise ArgumentError, "can not encode negative number" if value < 0
  numbers = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
             50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

  numbers.keys.sort.reverse.each do |key|
    while value >= key
      res += numbers[key]
      value -= key
    end
  end
  return res
end

puts romanize(-5)
