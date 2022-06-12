def cipher(string,shift)

  ord_array = []
  cipher_ord_array = []
  cipher_array = []

  string_array = string.downcase.chars 

  for i in string_array
    ord_array.push(i.ord)
  end

  for i in ord_array
    if i < 97 || i > 122
      cipher_ord_array.push(i)
    elsif i + shift > 122
      x = i + shift
      y = x - 122
      cipher_ord_array.push(96+y)
    else
      cipher_ord_array.push(i+shift)
    end
  end

  for i in cipher_ord_array
    cipher_array.push(i.chr)
  end


puts "your string is : '#{string}'"
puts "your string will be converted into this array : #{string_array}"
puts "the ordinal array of your string array will be : #{ord_array}"
puts "which will be converted into this cipher : #{cipher_ord_array}"
puts "which is converted into charaters : #{cipher_array}"
puts "your combined cipher will be : '#{cipher_array.join('')}'"

end

cipher("what a string!",5)