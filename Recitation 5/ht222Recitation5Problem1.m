function fibonacci = ht222Recitation5Problem1(sequence)

%Logic: We know that the first and second occurances in the fibonacci
%       sequence have to start at 0 and 1. These are the "special cases"
%       of the sequence.
fibonacci(1) = 0;
fibonacci(2) = 1;

%However, if we want more than the first 2 sequences, add the previous 2
%numbers together. Keep adding until you hit the amount of sequences
%desired.
if sequence > 2
    for index = 3 : sequence %Start @ index 3, put #'s into array to sequence.
      fibonacci(index) = fibonacci(index - 1) + fibonacci(index - 2);
    end
end