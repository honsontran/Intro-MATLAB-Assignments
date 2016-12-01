function currAngle = ht222Recitation7Problem2(incident, solar)
    %If incident angle is over 90, move solar closer to 0
    if incident > 90
        currAngle = solar - 0.01;
    
    %First check if the solar angle is within 0.01 of incident.
    elseif abs( incident - solar ) <= 0.01
        currAngle = solar;
    
    %Otherwise, move solar closer to incident.
    else
        if incident > solar
            currAngle = solar + 0.01; %Move positive if incident is greater.
            
        else
            currAngle = solar - 0.01; %Move negative is incident is lower.
        end
    end
end
