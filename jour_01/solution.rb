require 'pry'

@lines = File.open('input.txt', 'r').map { |line| line.to_i }

def increases(window_size)
  @lines.each_cons(window_size + 1).count do |measurements|
    measurements.last(window_size).sum > measurements.first(window_size).sum
  end
end

puts "partie 1: #{increases(1)}"

puts "partie 2: #{increases(3)}"
