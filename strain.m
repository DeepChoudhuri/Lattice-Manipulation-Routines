A = load('A.in'); % Lattice vectors in unstrain Mg matrix without any solute

% Lattice vectors after introducing solute atoms
B = load('B_1Nd.in');
%B = load('B_1Nd_1Zn_basal.in');
%B = load('B_1Nd_1Zn_prismatic.in');
A1 = A(:,1)
A2 = A(:,2)
A3 = A(:,3)