disp('What is the name of your image file?');

%uigetfile() prompts user to find the image.
img = uigetfile('Enter here: ');

%Read the image file.
img = imread(img);
img = rgb2gray(img);                     %Turns to greyscale.   
img = imcomplement(img);              %Method turns to negative.
output = imshow(img);                    %output image.