# your code goes here
class Person
    # is mutable
    attr_accessor :bank_account
    # cannot be default overwritten
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        self.happiness += 1
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each do |obj| 
            obj.happiness += 3 
        end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        # objects = [self, person]
        if topic == "politics"
            [self, person].each do |obj| 
                obj.happiness -= 2
            end
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, person].each do |obj| 
                obj.happiness += 1
            end
            return "blah blah sun blah rain"
        end
        "blah blah blah blah blah"
      end

end 