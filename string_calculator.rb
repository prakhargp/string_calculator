class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    sum = 0
    # Splitting by commas or newlines
    num_arr = numbers.split(/,|\n/)

    # Convert into integers and check for negative number and if not adds up
    negative_numbers = []
    num_arr.each do |num|
      num = num.to_i
      negative_numbers << num if num < 0
      sum += num.to_i
    end

    # If there are negative numbers, raise an exception
    unless negative_numbers.empty?
      raise "negative numbers not allowed (#{negative_numbers.join(', ')})"
    end

    sum
  end
end