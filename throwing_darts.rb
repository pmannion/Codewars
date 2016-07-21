#Description:

#You've just recently been hired to calculate scores for a Dart Board game! 

#Scoring specifications:
#0 points - radius above 10
#5 points - radius between 5 and 10 inclusive
#10 points - radius less than 5

#If all radiuses are less than 5, award 100 BONUS POINTS!

#Write a function that accepts an array of radiuses (can be integers and/or floats), 
#and returns a total score using the above specification.
#An empty array should return 0.

#Examples:
#scoreThrows( [1, 5, 11] ) => returns 15 
#scoreThrows( [15, 20, 30] ) => returns 0 
#scoreThrows( [1, 2, 3, 4] ) => returns 140


def scoreThrows(radi)
  unless radi.nil? 
    score = 0
    give_bonus = true
    radi.map do |dart| 
      dart.between?(5,10) ? (score += 5; give_bonus = false) : score += 10 unless dart > 10
      give_bonus = false if dart > 5
    end 
    result = give_bonus == true ? score += 100 : score
    radi.empty? ? score = 0 : result  
  end
end
