require 'date'
#this file strongly need to be refine!
#I just wrote
#
#so I'll fix this program tomorrow




# p @toSaveFolder
# p @toSaveFormat



# createdAt = '18:29 Jun 8, 2016'

def createdAt
	getNow = Time.now.strftime("%H:%M %b %d, %Y")
end

def userInput
	print "now logging! \n\n"
	lines = $stdin.read
	$stdin.close
	# p "here is what you typed -----------------------------------"
	formattedLines = <<~EOS 
	[#{createdAt}]

	#{lines}
	******
	EOS
end




fileBase = <<EOS
# Started at **#{createdAt}**
------
------
<br />
EOS


p "make new one[new]? or logging with already exsisting one[cont]?"
newORnot = gets.chomp!


if newORnot == "new"
	p "enter the name for new file"
	toSaveFile = gets.chomp + '.md'	
	File.open(toSaveFile, "a") do |file|
		file.puts fileBase
	end


elsif newORnot == "cont"
	p "enter the name of exsisting file"
	toSaveFile = gets.chomp + '.md'	
	toSaveLines =  userInput
	File.open(toSaveFile, "a") do |file|
		file.puts toSaveLines
	end
	p "saved! add another line?"


else
	p "error"

end







