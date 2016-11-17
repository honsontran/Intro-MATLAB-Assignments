function rotate = ht222Recitation6Problem1(original)
    %Check to see if it's a square matrix. ndims checks for dimensions.
    [rows, cols] = size(original);

    %In a square matrix, the colums and dimensions (rows) should be the same.
    while ~( cols == rows )
        disp('Incorrect format or not a matrix. Please try again.');
        disp(' ');                                      %Just for spacing
        original = input('Please input your matrix: ');

        [rows, cols] = size(original);     %Update the column to compare again
    end

    %Now that we have a square matrix, we can initialize and declare the new
    %matrix.
    flip = zeros(rows, cols);

    %Now for the algorithm.
    if size(original) == [1, 1] %Special case: If the matrix is just a 1x1, it can't flip.

    else
        for i = 1 : cols   %All the numbers in the first column should be put in first.
            for j = 1 : rows % All the numbers from the same column but different row.
                flip(i, j) = original(j, i);    %flipped should has flipped dimensions.
            end
        end
    end

    %Now, display rotate.
    rotate = flip;
end
