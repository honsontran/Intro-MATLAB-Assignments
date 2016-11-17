%Ask the user how many bits they have in a binary word.
word = input('How many bits do you have in your binary word? ');

%Then, calculate the possible values.
value = power(2, word);

%Display this back to the user.
disp('The possible amount of values for your binary word is: ');
disp(value);