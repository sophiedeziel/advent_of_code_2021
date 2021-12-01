require 'pry'

lines = File.open('input.txt', 'r').map { |line| line.to_i }

previous = 0
increases = lines.count do |measurement|  
  increase = measurement > previous
  previous = measurement
  increase
end - 1

puts "partie 1: #{increases}"

increases = lines.each_cons(4).count do |measurements|
  measurements.last(3).sum > measurements.first(3).sum
end

puts "partie 2: #{increases}"
