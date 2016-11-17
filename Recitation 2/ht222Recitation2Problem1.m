%Start off by asking the user what fahrenheit they are trying to convert.
f = input('Please enter in the degrees you want to convert (Fahrenheit):');

%Now, convert this number to celsius.
c = (5/9)*(f - 32);

%Now, just display the answer.
disp('The temperature in degrees celsius is:');
disp(c);