class Person 
   attr_reader :name, :bank_account, :happiness, :hygiene 

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(amount)
        @bank_account += amount
    end

    def happiness=(level)
        if level > 10
            @happiness = 10
        elsif level < 0 
            @happiness = 0 
        else 
            @happiness = level
        end 
        
    end 
    def hygiene=(level)
        if level > 10
            @hygiene = 10
        elsif level < 0 
            @hygiene = 0 
        else 
            @hygiene = level
        end 
        
    end 
    
    def happy?
        if @happiness > 7 
            return true
        else 
            return false 
        end 
    end 
    
    def clean?
        if @hygiene > 7 
            return true 
        else
            return false
        end 
    end
    
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end 
    
    def take_bath
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene -=3
        self.happiness +=2
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -=2
            return 'blah blah partisan blah lobbyist'
            elsif topic == "weather"
                friend.happiness += 1
            self.happiness +=1
                return 'blah blah sun blah rain'
            else 
                return "blah blah blah blah blah"
        end  
        
    end

end 
