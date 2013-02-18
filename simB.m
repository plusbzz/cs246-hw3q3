function s = simB(M,x,y,C2,sA)
%SIMB
    % outdegrees
    IX = sum(M(:,x));
    IY = sum(M(:,y));
    numB = size(M,2);
    
    sumB = 0;
    for i=1:numB
        for j = 1:numB
            if M(i,x) == 1 && M(j,y) == 1
                sumB = sumB + sA(i,j);
            end
        end
    end
    s = (C2*sumB)/(OX*OY);
end

