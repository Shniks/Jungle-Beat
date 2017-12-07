require "pry"
require "./lib/node"


class LinkedList

    attr_reader :head, :count

  def initialize

    @head  = head
    @count = 0

  end

def append(data)
    if head.nil?
      @head = Node.new(data)
      @count += 1
    else
      current_node = @head
      while current_node.next_node != nil
          current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
      @count += 1
    end
    data
end

def prepend(data)
   duplicate_head = @head
   prepend_node = Node.new(data)
   @head = prepend_node
   prepend_node.next_node = duplicate_head
 end

def to_string
  current_node = @head
  song = ""
  song << current_node.data
  count = 1
  while current_node.next_node != nil
      current_node = current_node.next_node
      song << " " + current_node.data
      count += 1
  end
  song
end

def insert(location, data)
  current_node = @head
  (location-1).times do
    current_node = current_node.next_node
  end
  insert_node = Node.new(data)
  insert_node.next_node = current_node.next_node
  current_node.next_node = insert_node
end

def find(location, number)
  current_node = @head
  sound_snips = ""
  location.times do
    current_node = current_node.next_node
  end
  number.times do
    sound_snips << current_node.data + " "
    current_node = current_node.next_node
  end
  sound_snips.chop
end

def includes?(lyric)
  current_node = @head
  while current_node != nil
    if current_node.data == lyric
      return true
    else
      current_node = current_node.next_node
    end
   return false
  end
end

def pop
  current_node = @head
  while current_node.next_node.next_node != nil
    current_node = current_node.next_node
  end
  target = current_node.next_node.data
  current_node.next_node = nil
  @count -= 1
  target
end


end
