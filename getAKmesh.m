function getAKmesh = getAKmesh(A,kspacing,g)
    
%a = 11.5301886900864954;
    %c =10.3422324735087408;
%A = getAhcp(a,c);
    a1 = A(1,:);
    a2 = A(2,:);
    a3 = A(3,:);
    %cBYa = c/a
    
    b1cross = getCrossproduct(a2,a3);
    b1denom = getDotproduct(a1,b1cross);
    b1 = ((2*pi())/b1denom)*b1cross;
    
    b2cross = getCrossproduct(a3,a1);
    b2denom = getDotproduct(a2,b2cross);
    b2 = ((2*pi())/b2denom)*b2cross;
    
    b3cross = getCrossproduct(a1,a2);
    b3denom = getDotproduct(a3,b3cross);
    b3 = ((2*pi())/b3denom)*b3cross;
    
    b1mag = getDotproduct(b1,b1);
    b2mag = getDotproduct(b2,b2);
    b3mag = getDotproduct(b3,b3);
    
    if (g == 1)  % K mesh with gamma shift incase g =1
        printf("Gamma shift selected \n");
        M1 = sqrt(b1mag)/kspacing + 0.5;
        M2 = sqrt(b2mag)/kspacing + 0.5;
        M3 = sqrt(b3mag)/kspacing + 0.5;
    else  % NO gamma shift incase g anything other than 1
        printf("Gamma shift NOT selected \n");
        M1 = sqrt(b1mag)/kspacing;
        M2 = sqrt(b2mag)/kspacing;
        M3 = sqrt(b3mag)/kspacing;
    endif
        
    M = [int16(M1),int16(M2),int16(M3)];
    getAKmesh = M;
    
endfunction