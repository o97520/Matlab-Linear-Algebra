function C = matmult(A,B)
[rowA, colA] = size(A);
[rowB, colB] = size(B);

if ~ismatrix(A) || ~ismatrix(B)
    error('not matrix');
elseif colA ~= rowB
    error('inner dimension')
end
C=zeros(rowA,colB,class(A));
for ii = 1:rowA
    for jj = 1:colB
        for kk = 1:colA
            
            C(ii,jj) = C(ii,jj)   + A(ii,kk) * B(kk,jj);
        end
    end
end
end
