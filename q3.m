% Initial adjacency matrix (3x5)

M = [0,1,1,0,1;0,1,0,1,0;1,0,0,0,0];

% Initialize similarities
sA = eye(size(M,1));
sB = eye(size(M,2));

C1 = 0.8;
C2 = 0.8;

for k = 1:3
    oldSA = sA;
    oldSB = sB;

    % update sA
    for i = 1:size(M,1)
        for j = i:size(M,1)
            sA(i,j) = simA(M,i,j,C1,oldSB);
            sA(j,i) = sA(i,j);
        end
    end
    % update sB
    for i = 1:size(M,2)
        for j = i:size(M,2)
            sB(i,j) = simB(M,i,j,C2,oldSA);
            sB(j,i) = sB(i,j);
        end
    end
end
