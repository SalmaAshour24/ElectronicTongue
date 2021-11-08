function [U,S] = lpp(X,W) 

[m, n] = size(X);
U = zeros(n,n);
S = zeros(n,n);

D = diag(sum(W,2));
L = D - W;
T1 = X'*L*X;
T2 = X'*D*X;
T = pinv(T2)*T1;

[U,S,V] = svd(T);
[val,ind] = sort(diag(S));
U = U(:,ind);
S = S(ind,:);

end
