function[y] = ht222Recitation3Problem3(x)

%Conditions
if x < 0
    y = -x;
    
elseif x <= 1
    y = x^2;
    
elseif x > 1
    y = log(x)+1;
    
end
