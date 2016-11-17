function [oxyDiff, gravDiff, oxyStat, gravStat] = ht222Recitation4Problem1(oxy1, rotSpeed)
    
    %Declare variables
    oxyEarth = 21;              %Earth's O2 Level
    g = 9.81;                   %Gravitational Constant
    
    %Note: This is the radius of the planet for Discovery 1. 
    radius = 8;                 %Radius used to find acceleration (v^2/r) where v = artGrav
                                
    %Calculations with the given variables.
    artGrav = (rotSpeed^2)/radius;   %artGrav is the artificial gravity environment
    
    %Now we have the gravity (AKA artAccel of the planet, Discovery 1).
    %Find the differences for conditions below.
    oxyDiff = oxyEarth - oxy1;  %This is the difference of oxygen for earth & ship.
    gravDiff = g - artGrav;   %This is the difference of gravity between earth & environment
    
    %Oxygen Logic: The optimal oxygen levels for Earth is 21%. When you subtract
    %the difference of oxyEarth and artGrav, the optimal result should be
    %0. If you have a higher gravity than earth, the formula gives a
    %negative number, resulting in too much oxygen. If it gives too little,
    %the formula will give a positive number. The goal of the conditions is
    %to maintain a range (-29 < oxyDiff < 7).
    
    %Oxygen Comparison/Conditions
    if oxyDiff < -29
        oxyStat = 'Warning, fire hazard!';
        
    elseif oxyDiff > 7
        oxyStat = 'Warning, low oxygen!';
            
    else
        oxyStat = 'Oxygen conditions are nominal.';
    end
    
    %Gravity Logic: Likewise to the oxygen logic, the optimal gravity s to
    %make the gravDiff formula equal to 0. In essense, if gravity of earth
    %and artificial gravity have the same gravity, the difference should be
    %0 (and optimal!). However, if it is lower (negative) the gravity is
    %heavier on the ship. On the other hand, if the result is positive
    %(lower artGrav), the diff is positive. These conditions are trying to
    % keep the range between -g/2 < gravDiff < g/2
    
    %Gravity Comparison/Conditions
    if gravDiff < -g/2
        gravStat = 'Warning, normal functions may be difficult!';
        
    elseif gravDiff > g/2
        gravStat = 'Warning, beware of floating objects!';
            
    else
        gravStat = 'Gravity is within norms.';
    end
end