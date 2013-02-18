% Initial adjacency matrix (3x5)

M = [0,1,1,0,1;0,1,0,1,0;1,0,0,0,0];

% Initialize similarities
sA = eye(size(M,1));
sB = eye(size(M,2));

C1 = 0.8;
C2 = 0.8;

% Similarities for A

% Similarities for B