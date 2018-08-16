require 'pry'

ages = [24, 30, 18, 20, 41]

sum_of_ages = ages.sum
p sum_of_ages

num_of_integers = ages.count
p num_of_integers

mean = (sum_of_ages.to_f / num_of_integers.to_f)
p mean

sub_result = []
ages.each do |age|
  round = age - mean
  sub_result << round.round(1)
end
p sub_result

sqr_result = []
sub_result.each do |result|
  squared = result ** 2
  sqr_result << squared.round(2)
end
p sqr_result
p sqr_result.sum

div_result = sqr_result.sum / num_of_integers
p div_result
p Math.sqrt(div_result).round(2)
# When you find the standard deviation, print it out
