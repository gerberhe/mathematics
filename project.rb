file = File.open("data.csv", 'r')

array = []

file.each_line do |line|
	array = line.split(',')
end

def max(array)
	puts "Max: #{array.max}"
end

def min(array)
	puts "Min: #{array.min}"
end

def mean(array)
	sum = 0
	mean = 0
	array.each do |i|
		sum += i.to_f
	end
	mean = sum / array.length
	puts "Mean: #{mean}"
end

def mode(array)
	var = 0
	mode = 0
	prevVar = 0
	array.each do |i|
		array.each do |n|
			if i == n
				var += 1
				mode = n if var > prevVar
				prevVar = var
			end
		end
		var = 0
	end
	puts "Mode: #{mode}"
end

def median(array)
	sorted = array.sort
	length = array.length
	median = 0

	if length%2 == 0
		first = sorted[length/2 - 1]
		second = sorted[length/2]

		median = (first + second) / 2
	else
		median = sorted[(length-1)/2]
	end
end

def median_quart_1(array)
	length = array.length
	if length%2 == 0
		arr = array[0..(length/2) - 1]
		puts "Median Quartile 1: #{median(arr)}"
	else
		arr = array[0..(length - 1) / 2]
		puts "Median Quartile 1: #{median(arr)}"
	end
end

def median_quart_3(array)
	length = array.length
	if length%2 == 0
		arr = array[(length/2) - 1..length-1]
		puts "Median Quartile 3: #{median(arr)}"
	else
		arr = array[(length - 1) / 2..length-1]
		puts "Median Quartile 3: #{median(arr)}"
	end
end

max(array)
min(array)
mean(array)
mode(array)
puts "Median: #{median(array)}"
median_quart_1(array)
median_quart_3(array)