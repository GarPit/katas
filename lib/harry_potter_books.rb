class HarryPotterBooks
  def initialize(first, second, third, fourth, fifth)
      @first = first
      @second = second
      @third = third
      @fourth = fourth
      @fifth = fifth
  end

  def optimal_price(*book_counts)
      current_group = if book_counts.size > 0
                          book_counts
                      else
                          [@first, @second, @third, @fourth, @fifth]
                      end
      group_of_different = current_group.reject {|number| number.zero? }
      discounted_price = case group_of_different.size
        when 5 then 0.75
        when 4 then 0.8
        when 3 then 0.9
        when 2 then 0.95
        else
            return 8 * group_of_different[0].to_i
        end
      next_group = group_of_different.map {|number| number - 1}
      return 8 * group_of_different.size * discounted_price + optimal_price(*next_group)
  end
end
