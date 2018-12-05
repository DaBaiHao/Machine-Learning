function z = bayes_classifier(mu,s2,p,x)

%                m: the mean of the data
% S: covariance of the data
% P: data category distribution probability
% X: The data we need to test


[mu_n,mu_k] = size(mu);
[n, ~] = size(x);

for i = 1:n
    
    for j = 1:mu_k
        
        Z = ( 1/( (2*pi)^(1/2)*det(s2(:,:,j))^0.5 ) ) * exp( -0.5*(x(i,:)-mu(:,j))'*inv(s2(:,:,j)).*(x(i,:)-mu(:,j)') );
        t(:,:,j) = p(1,j) .* Z;
        
        
    end
    
    [~, z(i)] = max(t,[],3);

    
  %  for j=1:mu_k
  %      Z(:,j) = p(i)*det(s2(:,:,i))^(-0.5)*exp(-0.5*sum((x'-repmat(mu(:,:,j),1,n))'*inv(s2(:,:,j)).*(x'-repmat(mu(:,:,j),1,n))',2));
  %  end
  %  Z = Z./repmat(sum(Z,2),1,k);
    
end

