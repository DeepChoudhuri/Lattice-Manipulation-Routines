function getCrossproduct = getCrossproduct(A,B)

  c1 = A(2)*B(3) - A(3)*B(2);
  c2 = -(A(1)*B(3) - A(3)*B(1));
  c3 = A(1)*B(2) - A(2)*B(1);
  
  C = [c1,c2,c3];
  
  getCrossproduct = C;
    
endfunction