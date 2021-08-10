class Person
attr_accessor :bank_account
attr_reader :happiness
attr_reader :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def name
        @name
    end

    # def happiness=(new_happiness)
    #     if new_happiness >=10
    #     @happiness = 10
    #     elsif new_happiness < 0 
    #     @happiness = 0
    #     else 
    #     @happiness = new_happiness
    #     end
    # end

    def happiness=(new_happiness)
        if new_happiness.between?(0,10)
        @happiness = new_happiness
        elsif new_happiness >10
        @happiness = 10
        else
        @happiness = 0
        end
    end
   
    def hygiene=(new_hygiene)
        if new_hygiene.between?(0,10)
        @hygiene = new_hygiene
        elsif new_hygiene >10
        @hygiene = 10
        else
        @hygiene = 0
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end
    
    def clean? 
        @hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(self.happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness=(person.happiness - 2)
            self.happiness=(self.happiness - 2)
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            person.happiness=(person.happiness + 1)
            self.happiness=(self.happiness + 1)
            'blah blah sun blah rain'
        else "blah blah blah blah blah"
        end
    end



end





# require './lib/person.rb'
# whiting = Person.new('Whiting', 22, 22, 22)