run = [0, 0]
open("02.txt").readlines.each do |line|
    x, y = line.split(" ")
    x, y = [x.ord - "A".ord, y.ord - "X".ord]
    run[0] += [3, 6, 0, 0, 3, 6, 6, 0, 3][x * 3 + y] + y + 1
    run[1] += [0, 3, 6][y] + [3, 1, 2, 1,2, 3, 2, 3, 1][x * 3 + y]
end
puts "1: #{run[0]}\n2: #{run[1]}"
