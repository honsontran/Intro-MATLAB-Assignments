function [alternating] = ht222Recitation5Problem3(amt)

%Create the array the length of the amount.
alternating = zeros(1, amt);

%Check if amt is odd or even, and set the correct boolean.
if mod(amt,2) == 0 %if amt is even
    zeroStart = true;

else
    zeroStart = false;
end

%Run the loop to make the array. Alternate between a 0 and a 1 using the
%boolean.
for index = 1 : amt
    if zeroStart == true
        zeroStart = false; %Set it to false to go into the else statement
        alternating(index) = 0;
        
    else
        zeroStart = true; %Set to true to go into the if statement
        alternating(index) = 1;
    end
end

end