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

	def median(array)
		median_array = Array.new
		for i in (0..array.length) do
			miny = array.min()
			index = array.index(miny)
			median_array[i] = miny
			array.delete_at(index.to_i)
		end

		median_array.delete(nil)

		if (median_array.length % 2 == 0)
			median = (median_array[(median_array.length/2)] + median_array[(median_array.length/2)+1])/2
		end

		puts "Median value is: #{median}"
		puts "#{median_array}"
	end




mean(num_array)
min(num_array)
max(num_array)
median(num_array)
end