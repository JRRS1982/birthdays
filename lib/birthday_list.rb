# See them all at once with their names and birthdays each on a line in a tidy format
# Check whose birthday it is today - the program can check through the birthdays I have stored and check each one to see if it’s someone’s birthday, and tells me something like "It's Mary Poppin's birthday today! They are 124 years old!" - otherwise it won't say anything.
# require 'date'

require 'date'

class BirthdayList
  attr_reader :birthday_list_array

  def initialize
    @birthday_list_array = []
  end

  def add(name)
    @birthday_list_array << name
  end

  def print
    @birthday_list_array.each do |key, value|
      puts "> #{key}s birthday is #{value}"
    end
  end

  def today
    t = Date.today
    p "#{t.day}.#{t.month}.#{t.year}"
  end
end

Jeremyslist = BirthdayList.new

Jeremyslist.add('Jeremy')
