
file_path = "/Users/shubham/input"

i = 50
r = 0

File.each_line(file_path) do |x|
   dir = x[0]
   offset = x[1..-1].to_i

   if dir == 'L'
      offset *= -1
   end

   su = i + offset

   new_i = ((su % 100) + 100) % 100
   # puts new_i

   if new_i == 0
       r += 1
   end

   i = new_i
end

puts r
	
