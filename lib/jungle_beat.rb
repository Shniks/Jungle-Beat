require './lib/linked_list'
class JungleBeat

      attr_reader     :list
      attr_accessor   :tempo, :voice

def initialize
  @list = LinkedList.new
  @tempo = 80
  @voice = "Alex"

end

def append(data)
  data.split.map do |lyric|
    list.append(lyric)
  end
end

def play
  system "clear"
  puts " "
  puts "And now... A beautiful Christmas song by our very own '#{voice}'!"
  puts " "
  puts "Please encourage him, even though he sings like a Banshee in an Irish castle,"
  puts "that is being chased by a rabid dog."
  puts " "
  puts "Wow #{voice}! You sound amazing! So much pain in your voice..."
  `say -r #{tempo} -v #{voice} #{list.to_string}`
  puts " "
  puts " "
end


end
