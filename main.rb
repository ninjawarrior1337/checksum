bytes = STDIN.read().split("\n").map(&:to_i)

checksum = bytes[5];
bytes[5] = 0
compliment = (2**8-1)-bytes.reduce(&:+).divmod(2**8).reduce(&:+)

puts "Stored Checksum: #{checksum}, Computed Checksum: #{compliment}"
puts "Error Detected!" if checksum != compliment