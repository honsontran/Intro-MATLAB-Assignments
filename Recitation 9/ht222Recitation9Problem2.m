disp('What is the name of your image file?');

%uigetfile() prompts user to find the image.
imgName = uigetfile('Enter here: ');
img = imread(imgName);

imgReverse = imcomplement(img);
%Call the method.
imshow(imgReverse);
