function getAhcp = getAhcp(a,c)
% Catesian coordinate system in real space   
% X axis along [11-20],
% Y axis along [1-100], and
% Z axis along [0001]
    
    a1 = [a,0,0]; 
    a2 = [-a/2,a*(sqrt(3)/2),0];
    a3 = [0,0,c];
    A = [a1;a2;a3];
    getAhcp = A;
    
endfunction