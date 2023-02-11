require 'pry'

class Person
  attr_reader :name, :bank_account, :happiness, :hygiene
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def bank_account=(value)
    @bank_account = value
  end
  
  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value >= 0
      @happiness = value
    else
      @happiness = 0
    end
  end
  
  def hygiene=(value)
  if value >= 0
    @hygiene = [value, 10].min
  else
    @hygiene = 0
  end
  end
  
  def clean?
    @hygiene > 7
  end
  
  def happy?
    @happiness > 7
  end
  
  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end
  
 def take_bath
  self.hygiene = [@hygiene + 4, 10].min
  "♪ Rub-a-dub just relaxing in the tub ♫"
end
  
 def work_out
  self.happiness = [@happiness + 2, 10].min
  self.hygiene = @hygiene - 3
  "♪ another one bites the dust ♫"
end
  
 def call_friend(friend)
self.happiness = [@happiness + 3, 10].min
friend.happiness = [friend.happiness + 3, 10].min
"Hi #{friend.name}! It's #{@name}. How are you?"
end
  
  def start_conversation(friend, topic)
if topic == "politics"
self.happiness = [@happiness - 2, 0].max
friend.happiness = [friend.happiness - 2, 0].max
"blah blah partisan blah lobbyist"
elsif topic == "weather"
self.happiness = [@happiness + 1, 10].min
friend.happiness = [friend.happiness + 1, 10].min
"blah blah sun blah rain"
else
"blah blah blah blah blah"
end
end

end
 
person = Person.new("John")
puts person.take_bath
