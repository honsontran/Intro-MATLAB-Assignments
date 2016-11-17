function [oxyFeed, fireSupp, rotMotor, eBrake] = ht222Recitation4Problem2(oxy, rotSpeed)

    %Call the function to get your variables.
    %We only need 2 outputs from the previous function to compare.
    [~,~,oxyStat, gravStat] = ht222Recitation4Problem1(oxy, rotSpeed);
    
    %We also need to declare strings to compare our output.
    oStrNorm = 'Oxygen conditions are nominal.';
    oStrLow = 'Warning, low oxygen!';
    oStrHigh = 'Warning, fire hazard!';
    
    gStrNorm = 'Gravity is within norms.';
    gStrLow = 'Warning, normal functions may be difficult!';
    gStrHigh = 'Warning, beware of floating objects!';
    
        
    %Logic: By checking through the conditions of gravity first, we avoid
    %having to check for double conditions (i.e if grav is low and oxy
    %is low) since the booleans that run through the gravity conditions
    %will retain their value (1 or 0).
    
    %CONDITIONS FOR GRAVITY
    %If grav is norm AND oxygen not low -> rotMotor = 1 AND eBrake = 0
    if strcmp(gravStat, gStrNorm) && ~(strcmp(oxyStat, oStrLow))
        rotMotor = true;
        eBrake = false;
    
    %If grav is high -> rotMot = 0 AND eBrake = 1
    elseif strcmp(gravStat, gStrHigh)
        rotMotor = false;
        eBrake = true;
    
    %If grav is low and oxyFeed not low -> rotMotor = 1 AND eBrake = 0
    else
        rotMotor = true;
        eBrake = false;
    end
    
    %CONDITIONS FOR OXYGEN
    %If oxygen is normal -> fireSupp = 0 AND oxyFeed = 1
    if strcmp(oxyStat, oStrNorm)
        fireSupp = false;
        oxyFeed = true;
    
    %If oxygen is high -> fireSupp = 1 AND oxyFeed = 0
    elseif strcmp(oxyStat, oStrHigh)
        fireSupp = true;
        oxyFeed = false;
    
    %If oxygen is low -> rotMotor = 0 AND oxyFeed = 1 AND fireSupp = 0
    else
        rotMotor = false;
        oxyFeed = true;
        fireSupp = false;
    end

end
        