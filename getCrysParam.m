function getCrysParam = getCrysParam(A)

% Axial vectors
  a1 = A(1,:);
  a2 = A(2,:);
  a3 = A(3,:);
  
  alpha = (180/pi())*acos(getDotproduct(a1,a2)/(sqrt(getDotproduct(a1, ...
                                                    a1))*sqrt(getDotproduct(a2,a2))));
  beta = (180/pi())*acos(getDotproduct(a2,a3)/(sqrt(getDotproduct(a3, ...
                                                    a3))*sqrt(getDotproduct(a2,a2))));
  gamma = (180/pi())*acos(getDotproduct(a1,a3)/(sqrt(getDotproduct(a3, ...
                                                    a3))*sqrt(getDotproduct(a1,a1))));
  maga1 = sqrt(getDotproduct(a1,a1));
  maga2 = sqrt(getDotproduct(a2,a2));
  maga3 = sqrt(getDotproduct(a3,a3));
  
  getCrysParam = [maga1,maga2,maga3;alpha,beta,gamma];

endfunction