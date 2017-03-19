def goto_earth
    puts "There is a final twist"
    puts "Whats the code to turn the spaceship on?"
    puts "Hint: its the total of 'mac' on your phone"
    

    print ">" * 6
    choice = $stdin.gets.chomp

    if choice == "10"
        puts "Wait, theres too much weight to carry.."
        puts "We have to dump some chocolates.."
        puts "We have over 50 kilos.."
        puts "How many do you want to keep?"

        print ">" * 6
        new_choice = $stdin.gets.chomp.to_i
            if new_choice < 5
               puts "Goody good, lets go home!!! :>"
               puts "===&&&***+++ YOU WIN +++***&&&==="
               exit(0)
            else
                puts "I can't beleive you would risk this for some chocolate"
                puts "===&&&***+++ GAME OVER +++***&&&==="
                game_over("You float in space like an infinte loop")
            end
    else 
          puts "Too bad"
          game_over("You float in space like an infinte loop")
    end
end
 


def catch_rope
    puts "Good stuf! Now you are climbing back into the ship"
    puts "The door is blocked by an alien"
    puts "All you have is a stick as a weapon and a chocolate to eat, what do you do?"
    
    alien_moved = false

    while true
        print ">" * 6
        choice = $stdin.gets.chomp
        
        if choice == "eat chocolate"
            game_over("The alien wanted the chocolate and eats you up.")
        elsif choice == "hit alien" && !alien_moved
            puts "The alien is scared and has moved from the door..."
            puts "But it is coming back towards the door again"
        alien_moved = true
        elsif choice == "hit alien" && alien_moved
            game_over("The alien anticitpates the hit and eats you up!!")
        elsif choice == "open door" && alien_moved
            goto_earth
        else
            puts "How did i even manage to get into space."
        end
    end

end


def next_ship(lives_remaining)
    puts "Look at what we have here."
    puts "We can try to start this ship which will take us to the teleporter."
    puts "Or we can just go back out"
    puts "What will it be?"

    print ' >>>>>> '
    choice = $stdin.gets.chomp

    if choice == "start ship"
        teleporter
    elsif choice == "go back out"
        start(lives_remaining)
    else
        lives_remaining -= 1
        if lives_remaining == 0
            game_over("You float in space like an infinte loop")
        else
            start(lives_remaining)
        end
    end                    
    
end


def teleporter()
    puts "wooohooo your've just woken up from a dream"
    puts ".........."
    puts " and you've just fallen out of your bed"
    puts " do you want to pee??"
    
    print ">>>>>> "
    dream_answer = $stdin.gets.chomp

    if dream_answer.include? "yes"
        puts "You were actually dreaming in the spaceship"
        puts "You open the exit door and ......"
        game_over("You float in space like an infinte loop")
    elsif dream_answer.include? "no"
        puts "go back to bed"
        puts "..............."
        puts "..............."
        puts "..............."
        puts "5 minutes later"
        start (lives_remaining)
     else
        puts "Too sleepy are we, wake up!!"
     end
end

def game_over(why)
    puts why, "MWAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAH"
    exit(0)
end

def start(lives_remaining)
    puts "You're floating in space, you have been detached from your station"
    puts "You have to react quickly, or else..............."
    puts "You have three choices *************"
    puts "try to catch the rope, wait for the next ship or jump into the teleporter"

    print ">" * 6
    choice = $stdin.gets.chomp
    
    if choice == "catch rope"
        catch_rope
    elsif choice == "next ship"
        next_ship(lives_remaining)
    elsif choice == "teleporter"
        teleporter
    else
        game_over("You float in space like an infinte loop")
    end
end

start(2)

# var = gets.chomp
#  case var
# when 1
#     #insert code here
# when 2
#     #insert code here
#     end