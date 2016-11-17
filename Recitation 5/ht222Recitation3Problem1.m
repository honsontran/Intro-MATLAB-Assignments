function material = ht222Recitation3Problem1(shear, tension)

%Exception: If user input is negative for either shear or tension.
if shear < 0 || tension < 0
    material = 'You cannot have negative shear or tension.';

%If shear and tension are positive, proceed with conditions.
else
    %Conditions
    if shear <= 33000 && tension <= 60000
        material = 'Material: Grade 1 Low Carbon Steel';

    elseif shear <= 55000 && tension <= 74000
        material = 'Material: Grade 2 Low Carbon Steel';

    elseif shear <= 85000 && tension <= 120000
        material = 'Material: Grade 5 medium carbon steel';

    elseif shear <= 120000 && tension <= 150000
        material = 'Material: Grade 8.2 Low Carbon Boron Steel';

    else %If user input exceeds material support.
        material = 'Your inputted shear and tension cannot be supported.';

    end   
end

    
