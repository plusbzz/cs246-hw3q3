function s = simA(M,x,y,C1,sB)
%SA
    % outdegrees
    OX = sum(M(x,:));
    OY = sum(M(y,:));
    numA = size(M,1);
    
    sumA = 0;
    for i=1:numA
        for j = 1:numA
            if M(x,i) == 1 && M(y,j) == 1
                sumA = sumA + sB(i,j);
            end
        end
    end
    s = (C1*sumA)/(OX*OY);
end

