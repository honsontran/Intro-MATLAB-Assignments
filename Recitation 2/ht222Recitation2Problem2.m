%Ask the inputs firsts for r1 and r2.
eRadius = input('Enter your equatorial radius: ');   %This is r1
pRadius = input('Enter your polar radius: ');        %This is r2

%Exception: When the polar radius is bigger than the equatorial.
while pRadius > eRadius
    disp(' '); % spacing
    disp('This cannot be possible. We assume that the polar radius is smaller than the equatorial radius.');
    disp('Please enter in your new values again');
    disp(' ');
    
    eRadius = input('Enter your equatorial radius: ');   %This is r1
    pRadius = input('Enter your polar radius: ');        %This is r2
end

%Calculate gamma and other values.
gamma = acos(pRadius/eRadius);
sGamma = sin(gamma); % sin(gamma)
cGamma = cos(gamma); % cos(gamma);
logAns = log(cGamma/(1-sGamma)); % log(cos(gamma)/(1-sin(gamma)))

%Calculate surface area of oblate spheroid.
oblate = (2*pi) * (eRadius^2 + (pRadius^2/sGamma) * logAns);

%Calculate spherical approximation.
approx = (4*pi)*((eRadius + pRadius)/2)^2;

%Display the variables.
disp(' '); % spacing
disp('The surface area of the oblate spheroid is:');
disp(oblate);

disp(''); %Just to space our my answer.

disp('The spherical approximation is:');
disp(approx);
