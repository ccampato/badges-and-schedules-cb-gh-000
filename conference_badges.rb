def badge_maker(name)
  "Hello, my name is #{name}."
end

speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def batch_badge_creator(array)
  batch = Array.new
  array.each do |speaker|
    badge_message = badge_maker(speaker)
    batch << badge_message
  end
  batch
end

def assign_rooms(array)
  room_assingment = []
  array.each_with_index { |speaker,index|
    room_number = index + 1
    message = "Hello, #{speaker}! You'll be assigned to room #{room_number}!"
    room_assingment << message
  }
  room_assingment
end

def printer(array)
  array.each do |speaker|
    puts batch_badge_creator(speakers)
  end

  array.each do |speaker|
    puts assign_rooms(speakers)
  end
end
