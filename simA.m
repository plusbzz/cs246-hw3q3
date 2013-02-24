function s = simA(M,x,y,C1,sB)
%SA
    % outdegrees
    OX = sum(M(x,:));
    OY = sum(M(y,:));
    numB = size(M,2);
    
    sumA = 0;
    for i=1:numB
        for j = 1:numB
            if M(x,i) == 1 && M(y,j) == 1
                sumA = sumA + sB(i,j);
            end
        end
    end
    s = (C1*sumA)/(OX*OY);
end

