%Ask user for variables.
disp('What is the file name? (i.e doge.jpeg)');
fileImg = imread(input('Enter here: '));

disp('What is the hidden text file? (i.e hiddenText.csv)');
fileText = input('Enter here: ');

disp('Choose: red, green, or blue? Enter in all lower case');
color = input('Enter here: ');

disp('Take the negative of the image? (i.e: 1 for yes, 0 for no');
negImg = input('Enter here: ');

disp('Take the negative of the text? (i.e: 1 for yes, 0 for no');
negText = input('Enter here: ');

img = ht222Recitation9Problem3(fileImg, fileText, color, negImg, negText);

