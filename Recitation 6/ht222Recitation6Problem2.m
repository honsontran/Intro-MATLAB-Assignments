function image = ht222Recitation6Problem2(matrix)
    [row, col] = size(matrix);      %Find our the dimensions of the matrix.
    rotate = zeros( size(matrix) ); %Make a matrix of the same dimensions.
    temp = zeros(1, col);       %Create the array with same length as matrix.

    %Keep track of what row you have to put in the temp array.
    mRow = row;

    %Keep track of what row you are copying to the array.
    tempRow = 1;

    %Algorithm, we need to put in a reversed array for every row going
    %backwards from the last row of the matrix to the very first. This is how
    %you rotate the picture/matrix 180 degrees.
    for k = 1 : size(matrix)
        length = col;
        tempCol = col;

        %Copy matrix row from first to last in reverse to the array.
        for i = 1 : length
            temp(i) = matrix(tempRow, tempCol);
            tempCol = tempCol-1;
        end

        %Copy this to the matrix going from last row to first.
        for j = 1 : length
            rotate(mRow, j) = temp(j);
        end

        mRow = mRow - 1;               %Proceed to transfer to next row in matrix.
        tempRow = tempRow + 1;         %Proceed to copy next row.
    end

    image = uint8(rotate);             %Cast this back to uint8.
end