# ver 1.0.0
# instruction.
#
# Please use this program with 'ruby'! not 'pry' or 'irb'.
# 
# Developed by Takumi irie.
# https://github.com/takumirie.
# 
# Please make sure this program is my practice of studying Ruby.
# If you have a time? give me a advice or comment!
# 
# Feel free to edit, and share.

require 'date'

p "enter the file name. (e,g. idea1.md. or blank to be 'date')(automatically, make new one or open)"

@toSaveFile = gets.chomp
if @toSaveFile.empty?
	p "error"
	exit(0)
end

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

toSaveLines =  userInput
File.open(@toSaveFile, "a") do |file|
	file.puts toSaveLines
end

p 'saved.'