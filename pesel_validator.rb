WAGI = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3, 1]
def valid_pesel?(pesel)
  return false if pesel.length != 11
  sum = 0
  WAGI.each_with_index do |weight, index|
    sum += weight * pesel[index].to_i
  end
  sum % 10 == 0
end

puts valid_pesel?("78072706351")
