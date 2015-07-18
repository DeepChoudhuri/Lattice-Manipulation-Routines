% Deformation matrix was adopted from 
% Srini's paper JAP 103 (2008) 043502 

%function getStrainedMatrices = getStrainedMatrices(s)
clc;
% INPUT parameters
 
e = 0.5/100.0;% Strain value  
 
 a = 11.5301886900864954;
 c =10.3422324735087408;
 kspacing = 0.176;
 
 % Unstrained matrix after VASP structural relaxation
  disp('----------------------------------------------------------------------')
 disp('UNSTRAINED MATRIX')
 A = getAhcp(a,c) 
 C = getCrysParam(A)
 K = getKmesh(A,kspacing,0)
  disp('----------------------------------------------------------------------')
    
 % 1st Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('First deformation matrix')
 D1 = [1+e,0,0;0,1,0;0,0,1];
 A1 = A*D1
 C1 = getCrysParam(A1)
 K1 = getKmesh(A1,kspacing,1)
 disp('----------------------------------------------------------------------')

  % 2nd Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('Second deformation matrix')
 D2 = [1,0,0;0,1+e,0;0,0,1];
 A2 = A*D2
 C2 = getCrysParam(A2)
 K2 = getKmesh(A2,kspacing,1)
 disp('----------------------------------------------------------------------')
 
 % 3rd Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('Third deformation matrix')
 D3 = [1,0,0;0,1,0;0,0,1+e];
 A3 = A*D3
 C3 = getCrysParam(A3)
 K3 = getKmesh(A3,kspacing,1)
 disp(['-----------------------------------------------------------' ...
       '-----------'])
 
  % 4th Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('Fourth deformation matrix')
 D4 = [1+e,0,0;0,1-e,0;0,0,1];
 A4 = A*D4
 C4 = getCrysParam(A4)
 K4 = getKmesh(A4,kspacing,1)
 disp('----------------------------------------------------------------------')

   % 5th Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('Fifth deformation matrix')
 D5 = [1,0,0;0,1+e,0;0,0,1-e];
 A5 = A*D5
 C5 = getCrysParam(A5)
 K5 = getKmesh(A5,kspacing,1)
 disp(['-----------------------------------------------------------' ...
       '-----------'])  
 
 % 6th Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('Sixth deformation matrix')
 D6 = [1+e,0,0;0,1,0;0,0,1-e];
 A6 = A*D6
 C6 = getCrysParam(A6)
 K6 = getKmesh(A6,kspacing,1)
 disp(['-----------------------------------------------------------' ...
       '-----------'])
 
 % 7th Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('seventh deformation matrix')
 D7 = [1,0,0; 0,1,(2*e)/2; 0,(2*e)/2,1];
 A7 = A*D7
 C7 = getCrysParam(A7)
 K7 = getKmesh(A7,kspacing,1)
 disp('----------------------------------------------------------------------')
 
  % 8th Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('Eighth deformation matrix')
 D8 = [1,0,(2*e)/2; 0,1,0; (2*e)/2,0,1];
 A8 = A*D8
 C8 = getCrysParam(A8)
 K8 = getKmesh(A8,kspacing,1)
 disp('----------------------------------------------------------------------')
 
   % 9th Deformation matrix 
 disp('----------------------------------------------------------------------')
 disp('Nineth deformation matrix')
 D9 = [1,(2*e)/2,0; (2*e)/2,1,0; 0,0,1];
 A9 = A*D8
 C9 = getCrysParam(A9)
 K9 = getKmesh(A9,kspacing,1)
 disp('----------------------------------------------------------------------')
 
%endfunction 
 
 
 
 
 
 