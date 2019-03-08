# Store all of my friends’ birthdays so I can keep track of them
# See them all at once with their names and birthdays each on a line in a tidy format
# Check whose birthday it is today - the program can check through the birthdays I have stored and check each one to see if it’s someone’s birthday, and tells me something like "It's Mary Poppin's birthday today! They are 124 years old!" - otherwise it won't say anything.
require 'date'

class BirthdayList
  attr_reader :birthday_list_object

  def initialize
    @birthday_list_object = []
  end

  def add(name='default name', dob=(Date.new(1900,1,1)))
    @birthday_list_object << {name.to_s => dob}
  end

  def remove(name)
    @birthday_list_object.pop[name]
  end
end

example = BirthdayList.new

p example.add('Jeremy')