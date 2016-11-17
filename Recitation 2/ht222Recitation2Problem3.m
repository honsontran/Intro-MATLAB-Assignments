%Ask for the binary operators (1 or 0)
A = input('What is the value for A in binary? Please enter in 1 or 0: ');
B = input('What is the value of B in binary? Please enter in 1 or 0: ');

%Now from these values, we can run the logic gates.
S = xor(A, B);
C = and(A, B1);

%Now to display the values of S and C.
disp('Your value for XOR is: ');
disp(S);

disp('Your value for AND is: ');
disp(C);