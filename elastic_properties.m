% These values are only for cubic materials

clc;
clear;

C11 = 276;
C12 = 173.5;
C44 = 136.3;

disp('Bulk Modulus');

B = 0.3333*(C11+2*C12) % Voigt and Reuss averagee bulk modulus is same for cubic materials

disp('Shear Modulus - Voigt Average')
Gv = 0.2*(C11 - C12 + 3*C44)

disp('Shear Modulus - Resuss Average');
Gr = (5*(C11 - C12)*C44)/(4*C44 + 3*(C11-C12)) 

disp('Average Shear Modulus - G = 0.5*(Gv+Gr)')
G = 0.5*(Gv + Gr)

disp(' Youngs Modulus')
E = (9*B*G)/(2*(3*B+G))

disp('Poissons Ratio');

mu = (3*B - 2*G)/(2*(3*B+G))

