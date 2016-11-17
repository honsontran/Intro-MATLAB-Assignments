clear,clc
filename ='doge.jpg'; % Image name
myImage = imread(filename); % converting it to a matrix
myImage = rgb2gray(myImage); % converting it to gray scale
flipped = rec6prob1(myImage); % Here where you have to write your function instead of "rec6prob1"
imshow(flipped);   % showing your flipped-image
