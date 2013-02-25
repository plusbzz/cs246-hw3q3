function [ sA,sB ] = findSimilarity(M,C1,C2,iters)
    % Initialize similarities
    sA = eye(size(M,1));
    sB = eye(size(M,2));

    for k = 1:iters
        oldSA = sA;
        oldSB = sB;

        % update sA
        for i = 1:size(M,1)
            for j = (i+1):size(M,1)
                sA(i,j) = simA(M,i,j,C1,oldSB);
                sA(j,i) = sA(i,j);
            end
        end
        % update sB
        for i = 1:size(M,2)
            for j = (i+1):size(M,2)
                sB(i,j) = simB(M,i,j,C2,oldSA);
                sB(j,i) = sB(i,j);
            end
        end
    end
end

