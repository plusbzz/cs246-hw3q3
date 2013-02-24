function s = simB(M,x,y,C2,sA)
%SIMB
    % outdegrees
    IX = sum(M(:,x));
    IY = sum(M(:,y));
    numA = size(M,1);
    
    sumB = 0;
    for i=1:numA
        for j = 1:numA
            if M(i,x) == 1 && M(j,y) == 1
                sumB = sumB + sA(i,j);
            end
        end
    end
    s = (C2*sumB)/(IX*IY);
end

