class Diversion
  def initialize(number_of_digits)
    @number_of_digits = number_of_digits
  end

  def find
    raise ArgumentError.new("Number of digits should be greater than 0") if @number_of_digits.zero?
    binaries.reject {|binary| binary.include?('11') }.size
  end

  def binaries
    numbers.map {|n| "%0#{@number_of_digits}b" % n }
  end

  def numbers
    (0..(2 ** @number_of_digits - 1)).to_a
  end
end
