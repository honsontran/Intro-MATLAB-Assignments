function [grades] = ht222Reciation5Problem2(shearForces, tensileForces)

%First, create an array with the function zeros (creates array w/ all 0s)
%from 1 to the length of the shear forces given.
grades = zeros(1, length(shearForces));

% Run through all the numbers in the array
for index = 1 : length(shearForces)
    
    %Compare the number at that index using our Recitation 3 Function.
    material = ht222Recitation3Problem1(shearForces(index), tensileForces(index));
    
    %Comparisons after the function spits out a String.
    switch material
        case 'Material: Grade 1 Low Carbon Steel'
            grades(index) = 1;
            
        case 'Material: Grade 2 Low Carbon Steel'  
            grades(index) = 2;
            
        case 'Material: Grade 5 Medium Carbon Steel'
            grades(index) = 5;
            
        case 'Material: Grade 8.2 Low Carbon Boron Steel'
            grades(index) = 8.2;
    end
end

end