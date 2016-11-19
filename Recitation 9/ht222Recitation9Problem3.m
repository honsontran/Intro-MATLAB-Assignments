function [newimg, newtext] = ss2761Reciation9Problem3(img, text, color, flipimage, fliptext)

color = lower(color);   %Convert all the text to lower case.

% Part A
img = imread(img);      % Read the Image.

% Part B
text = csvread(text);   % Read the text file.

% Part C
text = uint8(text);     % Convert this file into uint8 for the image.

% Part D
if flipimage == 1       % Flip image if we chose true.
    img = ht222Recitation9Problem2(img);
end

% Part E
if fliptext == 1        % Flip text if we chose to.
    text = ht222Recitation9Problem1(text); 
end

% Part F
switch color 
    case {'red'}
        img(:,:,1) = text;
    case {'green'}
        img(:,:,2) = text;
    case {'blue'}
        img(:,:,3) = text; 
end

% Part G
newimg = img;
newtext = text;

end
    

