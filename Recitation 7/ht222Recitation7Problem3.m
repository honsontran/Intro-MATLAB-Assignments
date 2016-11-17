function currPanel = ht222Recitation7Problem3(latitude, day)
    %The panel must always be readjusted from 0 everyday.
    currPanel = 0;
    
    %First, we need the incident angle.
    incident = ht222Recitation7Problem1(latitude, day);
   
    %Now, keep adjusting panel until deviation = ±0.01 (from prev func)
    while abs( incident - currPanel ) >= 0.01
        currPanel = ht222Recitation7Problem2(incident, currPanel);
    end

end