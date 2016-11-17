function [outString] = rec3prob1(shear, tensile)

if shear < 33000 && tensile < 60000
    outString = 'Grade 1 Low Carbon Steel';
elseif shear < 55000 && tensile < 74000
    outString = 'Grade 2 Low Carbon Steel';
elseif shear < 85000 && tensile < 120000
    outString = 'Grade 5 Medium Carbon Steel';
elseif shear < 120000 && tensile < 150000
    outString = 'Grade 8.2 Low Carbon Boron Steel';
else
    outString = 'Consider a redesign!';
end