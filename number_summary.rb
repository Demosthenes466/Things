# @author Nik Young <youngnr@s.dcsdk12.org>
# @author Tannor Ziehm <ziehmtj@s.dcsdk12.org>
class NumberSummary
	
	class << self
		# file = File.open("data.csv", 'r')
		# file.each_line do |line|
		# 	num_array = line.split(",")
		# 	puts "#{num_array}"

			def max(array)
				puts "Maximum value is: #{array.max()}"
			end

			def min(array)
				new_array = Array.new
				for i in (0..array.length) do
					new_array[i] = array[i].to_f
				end
				puts array
				min = new_array.min()
				puts "Minimum value is: #{min}"
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
				# new_array = Array.new
				median_array = Array.new
				for i in (0..array.length - 1) do
					median_array[i] = array[i].to_f
				end
				sorted = median_array.sort
				if ((sorted.length)% 2 == 0)
					median = (sorted[(sorted.length/2)].to_f + sorted[(sorted.length/2)-1].to_f).to_f/2
				else 
					median = sorted[(sorted.length/2).to_i]
				end
				puts "Median value is: #{median}"
				
			
			end
	end
			

end