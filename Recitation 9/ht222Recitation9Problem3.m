function output = ht222Recitation9Problem3(fileImg, fileText, color, negImg, negText)
    img = imread(fileImg);
    csv = csvread(fileText);
    csv = uint8(csv);
    
    combined(:, 1) = img;
    combined(:, 2) = csv;
    
    Red = img;
    Green = img;
    Blue = img;
    
    if strcmp(color, 'red')
        Red(:, :, 2:3) = 0;
        output = imshow(combined);
    
    elseif strcmp(color, 'green')
        Green(:, :, 1) = 0;
        Green(:, :, 3) = 0;
        output = imshow(combined);
        
    elseif strcmp(color, 'blue')
        Blue(:, :, 1) = 0;
        Blue(:, :, 2) = 0;
        output = imshow(combined);
    end
end