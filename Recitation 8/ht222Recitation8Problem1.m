function [friction] = ht222Recitation8Problem1(angles,mass,static,kinetic)

    %Declare variables
    degree = atand(static);
    gravity = 9.81;
    friction = angles;      %Friction should be same length as angles.

    %Go through the entire loop and determine static/kinectic friction force is
    %needed.
    for i = 1:length(angles)
        if degree >= angles(i)
            friction(i) = mass*gravity*sind( angles(i) );

        else
            friction(i) = kinetic*gravity*mass*cosd( angles(i) ); 
        
        end
    end
end
        
        