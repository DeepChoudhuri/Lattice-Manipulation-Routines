clear;clc;  
A = load('A.out');     
% Axial vectors
  a1 = A(1,:);
  a2 = A(2,:);
  a3 = A(3,:);
  vol = sqrt(3)*0.5*a1(1)*a1(1)*a3(3)
  %cBya = a3(3) / a1(1) 
  
  alpha = (180/pi())*acos(getDotproduct(a1,a2)/(sqrt(getDotproduct(a1, ...
                                                    a1))*sqrt(getDotproduct(a2,a2))));
  beta = (180/pi())*acos(getDotproduct(a2,a3)/(sqrt(getDotproduct(a3, ...
                                                    a3))*sqrt(getDotproduct(a2,a2))));
  gamma = (180/pi())*acos(getDotproduct(a1,a3)/(sqrt(getDotproduct(a3, ...
                                                    a3))*sqrt(getDotproduct(a1,a1))));
  mag_a1 = sqrt(getDotproduct(a1,a1));
  mag_a2 = sqrt(getDotproduct(a2,a2));
  mag_a3 = sqrt(getDotproduct(a3,a3));
  %cBya = mag_a3 / mag_a1
  
 M = [mag_a1,mag_a2,mag_a3;alpha,beta,gamma]
 cBYa = (0.5*mag_a3) / (0.25*mag_a1)
