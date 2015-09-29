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
				new_array = strings_to_ints(array)
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
				final = final.round(2)
				puts "Mean Value is: #{final}"
			end

			def median(array)
				sorted = strings_to_ints(array).sort
					if (even_length(sorted))
						median = ((half_array_length(sorted) + half_array_length_minus_one(sorted))/2)
						# median = (sorted[(sorted.length/2)].to_f + sorted[(sorted.length/2)-1].to_f).to_f/2
					else 
						median = half_array_length(sorted)
					end
					median = median.round(1)
					puts "Median value is: #{median}"
				end

			def q_one(array)
				sorted = strings_to_ints(array)
					if (even_length(sorted))
						q1 = Array.new
						q1 = sorted[0..(sorted.length/2)-1]
						if (even_length(q1))
							median = ((half_array_length(q1) + half_array_length_minus_one(q1))/2)
						else 
							median = half_array_length(q1)
						end
					else 
						q1 = Array.new
						q1 = sorted[0..(sorted.length/2)-1]
					end
					median = median.round(1)
					puts "Quartile 1 is:" "#{median}"
			end

			def q_three(array)
				sorted = strings_to_ints(array).sort
					if (even_length(sorted))
						q3 = Array.new
						q3 = sorted[((sorted.length/2)+1)..sorted.length]
						if (even_length(q3))
							median = ((half_array_length(q3) + half_array_length_minus_one(q3))/2)
						else 
							median = half_array_length(q3)
						end
					else 
						q3 = Array.new
						q3 = sorted[((sorted.length/2)+1)..sorted.length]
					end
					median = median.round(1)
					puts "Quartile 3 is:" "#{median}"
			end

			def mode(array)
				n = 0
				median_array = Array.new
				for i in (0..array.length - 1) do
					median_array[i] = array[i].to_f
				end
				sorted = int_array.sort
				print sorted
				mode_array = Array.new
				index.to_f = 0
				for i in (0..sorted.length)
					index = sorted[i].index
					print index
					if((sorted[index] == sorted[index-1]))
						mode_array.push(sorted[index])
						print "running"
					end
					# if(i == n)
					# 	mode_array.push(n)
					# 	print n
					# 	print "running"
					# end
					# n = i
				end
				print mode_array

			end
			private

			def strings_to_ints(array)
				int_array = Array.new
				for i in (0..array.length - 1) do
					int_array[i] = array[i].to_f
				end
				return int_array
			end

			def even_length(array)
				array.length % 2 == 0
			end

			def half_array_length(array)
				return array[(array.length/2)]
			end

			def half_array_length_minus_one(array)
				return array[((array.length/2)-1)]
			end


	
	end
end