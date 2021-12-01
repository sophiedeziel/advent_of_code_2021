require 'pry'

lines = File.open('input.txt', 'r').map { |line| line.to_i }
previous = 0
increases = lines.count do |measurement|  
  increase = measurement > previous
  previous = measurement
  increase
end - 1

puts "partie 1: #{increases}"
