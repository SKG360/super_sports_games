require 'pry'

class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
    @mean = nil
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    @mean = (@ages.sum.to_f / @ages.count.to_f)
    @mean
  end

  def subtracted_result
    sub_result = []
    @ages.each do |age|
      round = age - average_age
      sub_result << round.round(1)
    end
    return sub_result
   end
##------  - - - - - - - - - - - - ##
# Refactor with new method here
  def square_root(sub_result)
    sqr_result = []
    sub_result.each do |result|
      squared = result ** 2
      sqr_result << squared.round(2)
    end
    return sqr_result
  end
## - - - - - - - - - - - - - - - ##
# refactor with new method here
  def standard_deviation(sqr_result)
    div_result = sqr_result.sum / @ages.count
    return Math.sqrt(div_result).round(2)
  end

  def standard_deviation_age
    sub_result = subtracted_result
    sqr_result = square_root(sub_result)
    standard_deviation(sqr_result)
  end

end
