file = File.open("data.csv", 'r')
file.each_line do |line|
	num_array = line.split(",")
	puts "#{num_array}"

	def max(array)
		puts "Maximum value is: #{array.max()}"
	end

	def min(array)
		puts "Minimum value is: #{array.min()}"
	end

	def mean(array)

		total = 0
		i = 0
		for i in (0..array.length) do
			total += array[i].to_f
		end

		final = total/array.length
		puts "Mean Value is: #{final}"
	end


mean(num_array)
min(num_array)
max(num_array)

end