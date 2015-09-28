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
				final = final.round(2)
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
					median = median.round(1)
					puts "Median value is: #{median}"
				end

			def q_one(array)
				median_array = Array.new
				for i in (0..array.length - 1) do
					median_array[i] = array[i].to_f
				end
				sorted = median_array.sort
					if ((sorted.length)% 2 == 0)
						q1 = Array.new
						q1 = sorted[0..(sorted.length/2)-1]
						if ((q1.length)% 2 == 0)
							median = (q1[(q1.length/2)].to_f + q1[(q1.length/2)-1].to_f).to_f/2
						else 
							median = q1[(q1.length/2).to_i]
						end
					else 
						q1 = Array.new
						q1 = sorted[0..(sorted.length/2)-1]
					if ((q1.length)% 2 == 0)
							median = (q1[(q1.length/2)].to_f + q1[(q1.length/2)-1].to_f).to_f/2
						else 
							median = q1[(q1.length/2).to_i]
						end
					end
					median = median.round(1)
					puts "Quartile 1 is:" "#{median}"
			end

			def q_three(array)
				median_array = Array.new
				for i in (0..array.length - 1) do
					median_array[i] = array[i].to_f
				end
				sorted = median_array.sort
					if ((sorted.length)% 2 == 0)
						q1 = Array.new
						q1 = sorted[((sorted.length/2)+1)..sorted.length]
						if ((q1.length)% 2 == 0)
							median = (q1[(q1.length/2)].to_f + q1[(q1.length/2)-1].to_f).to_f/2
						else 
							median = q1[(q1.length/2).to_i]
						end
					else 
						q1 = Array.new
						q1 = sorted[((sorted.length/2)+1)..sorted.length]
					if ((q1.length)% 2 == 0)
							median = (q1[(q1.length/2)].to_f + q1[(q1.length/2)-1].to_f).to_f/2
						else 
							median = q1[(q1.length/2).to_i]
						end
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
				sorted = median_array.sort
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
	end
end