function incident = ht222Recitation7Problem1(latitude, day)
    %Check to see if day is ranging from 1 to 365.
    while day < 0 || day > 365
        day = input('Error. Please input a day ranging from 1 to 365.');
    end
    
    %First, calculate the declination angle
    decAngle = 23.45 * sin( 2*pi * (284 + day)/362.5 );    %Use sind because sin is in radians.
    
    %Once we know the declination angle, calculate incident angle.
    incident = cosd(decAngle) * cosd(latitude) + sind(decAngle) * sind(latitude);
    incident = acosd(incident);
    
    %Now, we have to check if our incident should be negative.
    if (latitude - decAngle) > 0
        incident = -1 * incident;
    end
    
    %if incident is..
    % = 0, then sun's rays are perpendicular.
    % < 0, then rays are angled toward north.
    % > 0 && < 90, rays are angled toward south.
    % > 90, no sunlight during the day
end