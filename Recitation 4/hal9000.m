function [o,w,m1,m2] = hal9000(o2,v)
oe = 21;%Earth's O2 Level
g = 9.81; %Gravitational Constant
r = 8; 
a = (v^2)/r;
o = oe - o2; w = g - a;
if o < -29
m1 = 'Sorry, I cannot do that.'; elseif o > 7
m1 = 'Sorry, I cannot do that.'; else
m1 = 'Sorry, I cannot do that.';
end
if w < -9.81/2
m2 = 'Sorry, I cannot do that.';elseif w > 9.81/2
m2 = 'Sorry, I cannot do that.';else
m2 = 'Sorry, I cannot do that.';
end