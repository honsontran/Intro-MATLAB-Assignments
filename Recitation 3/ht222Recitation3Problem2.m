function grade = ht222Recitation3Problem2(input)
    
    %Exception: If user input is < 0 or > 100, tell them it's invalid.
    if input < 0 || input > 100
       grade = 'Not valid. You entered a number lower than 0 or greater than 100';
    end
    
    %Conditions
    if input >= 90 && input <= 100
        grade = 'Your grade is: A';
    end
    
    if input >= 86 && input <= 89
        grade = 'Your grade is: B+';
    end
    
    if input >=80 && input <= 85
        grade = 'Your grade is: B';
    end
    
    if input >= 75 && input <=79
        grade = 'Your grade is: C+';
    end
    
    if input >= 65 &&input <= 74
        grade = 'Your grade is: C';
    end
    
    if input >= 55 && input <= 64
        grade = 'Your grade is: D';
    end
    
    if input >= 0 && input <= 54
        grade = 'Your grade is: F';
    end
    
end
