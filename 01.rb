input = open("01.txt").readlines
elf = [0]
input.each do |line|
    elf.append(0) if line == "\n"
    elf[-1] += line.to_i
end
elf.sort!
puts "1: " + elf[-1].to_s
puts "2: " + elf.slice(-3, 3).sum.to_s
