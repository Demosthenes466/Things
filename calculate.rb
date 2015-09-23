require_relative 'number_summary'

a = (1..6).map { |i| i }
# print a, "\n"
file = File.open("data.csv", 'r')
		file.each_line do |line|
			num_array = line.split(",")
			print num_array 
			puts
		
print NumberSummary.min(num_array), "\n"
print NumberSummary.max(num_array), "\n"
print NumberSummary.mean(num_array), "\n"
print NumberSummary.median(num_array), "\n"
end
# puts NumberSummary.summarize('data.csv')