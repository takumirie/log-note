require 'date'

p "enter the file name. (e,g. idea1.md. or blank to be 'date')(automatically, make new one or open)"

@toSaveFile = gets.chomp

if @toSaveFile.empty?
	p "error" ;exit(0)
end
# p "error" && exit(0) if @toSaveFile == ''

def theTime
	getNow = Time.now.strftime("%H:%M %b %d, %Y")
end

def userInput
	print "now logging! in #{@toSaveFile} \nexit is 2 times of'ctrl + d' \n\n"
	lines = $stdin.read
	$stdin.close
	formattedLines = <<~EOS 
	###[#{theTime}]

	#{lines}
	******\n
	EOS
end

#this part is now coding
fileBase = <<~EOS
# Started at **#{theTime}**
------
------
<br />
EOS
# end

toSaveLines =  userInput
File.open(@toSaveFile, "a") do |file|
	file.puts toSaveLines
end
p 'saved'