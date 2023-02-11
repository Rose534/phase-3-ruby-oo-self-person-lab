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
    if value > 10
      @hygiene = 10
    elsif value >= 0
      @hygiene = value
    else
      @hygiene = 0
    end
  end
end
