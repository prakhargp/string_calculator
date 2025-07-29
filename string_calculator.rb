class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    sum = 0
    # Splitting by commas or newlines
    num_arr = numbers.split(/,|\n/)

    # Convert to integers and add up
    num_arr.each { |num| sum += num.to_i }
    sum
  end
end