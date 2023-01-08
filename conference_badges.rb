# Write your code here.
require 'pry'

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator name_arr
    name_arr.map do |name|
        badge_maker(name)
    end
end

def assign_rooms speaker_list
    new_arr = []
    speaker_list.each.with_index do |speaker, index|
        room_number = index + 1
        new_arr << "Hello, #{speaker}! You'll be assigned to room #{room_number}!"
    end 
    new_arr
end

def printer speaker_list
    batch_arr = batch_badge_creator(speaker_list)
    batch_arr.each {|name| puts name} 
    room_arr = assign_rooms(speaker_list)
    room_arr.each {|room_assignment| puts room_assignment} 
end


