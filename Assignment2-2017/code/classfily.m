function z= classfily(mu,s2,p,x1,x2,k)


x = x1;
[n, D] = size(x);
% m: the mean of the data
% S: covariance of the data
% P: data category distribution probability
% X: The data we need to test

for i=1:k
    Z(:,i) = p(i)*det(s2(:,:,i))^(-0.5)*exp(-0.5*sum((x'-repmat(mu(:,i),1,n))'*inv(s2(:,:,i)).*(x'-repmat(mu(:,i),1,n))',2));
end

for i = 1:n
    z(i,1) = sum(Z(i,:) );
end

x = x2;
for i=1:k
    Z(:,i) = p(i)*det(s2(:,:,i))^(-0.5)*exp(-0.5*sum((x'-repmat(mu(:,i),1,n))'*inv(s2(:,:,i)).*(x'-repmat(mu(:,i),1,n))',2));
end

for i = 1:n
    z(i,2) = sum(Z(i,:) );
end





end

