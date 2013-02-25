% Initial adjacency matrix (3x5)

M = [0,1,1,0,1;0,1,0,1,0;1,0,0,0,0];
[sA_M,sB_M] = findSimilarity(M,0.8,0.8,3);

K21 = [1;1];
[sA_K21,sB_K21] = findSimilarity(K21,0.8,0.8,3);

K22 = [1 1; 1 1];
[sA_K22,sB_K22] = findSimilarity(K22,0.8,0.8,3);
