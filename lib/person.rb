class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def happiness=(n)
        @happiness = n
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0 
    end

    def hygiene=(n)
        @hygiene = n
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        [person, self].each {|x| x.happiness += 3}
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        conversators = [person, self]
        if topic == "politics"
            conversators.each {|x| x.happiness -= 2}
            unique_one = "partisan"
            unique_two = "lobbyist"
        elsif topic == "weather"
            conversators.each {|x| x.happiness += 1}
            unique_one = "sun"
            unique_two = "rain"
        end
        unique_one ||= "blah" #there are only two unique word in each conversation response
        unique_two ||= "blah"
        sentence = "blah blah #{unique_one} blah #{unique_two}"
    end
end

