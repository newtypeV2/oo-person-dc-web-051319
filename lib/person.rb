# your code goes here

class Person

  attr_reader :name, :hygiene, :happiness

  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  def hygiene=(hygiene)
    # if hygiene > 10
    #   @hygiene = 10
    # elsif hygiene < 0
    #   @hygiene = 0
    # else
    #   @hygiene = hygiene
    # end
    @hygiene=hygiene.clamp(0,10)
  end

  def happiness=(happiness)
    # if happiness > 10
    #   @happiness = 10
    # elsif happiness < 0
    #   @happiness = 0
    # else
    #   @happiness = happiness
    # end
    @happiness=happiness.clamp(0,10)
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account = self.bank_account + salary
    return "all about the benjamins"
  end


  def take_bath
    self.hygiene = self.hygiene+4
    return "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    self.hygiene = self.hygiene-3
    self.happiness = self.happiness+2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness = friend.happiness+3
    self.happiness= self.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"

  end

  def start_conversation(callee, topic)
    if topic == "politics"
      callee.happiness = callee.happiness-2
      self.happiness = self.happiness-2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      callee.happiness = callee.happiness+1
      self.happiness = self.happiness+1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end


end
