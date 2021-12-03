require 'pry'

@lines = File.open('input.txt', 'r').map do |line| 
  array = line.split(' ')
  array[1] = array[1].to_i
  array
end

horizontal = 0
depth = 0
aim = 0

@lines.each do |c,v|
  case c
  when "down"
    aim += v
  when "up"
    aim -= v
  when "forward"
    horizontal += v
    depth += aim * v
  end
end

puts "solution #1 #{horizontal * aim}"
puts "solution #2 #{horizontal * depth}"