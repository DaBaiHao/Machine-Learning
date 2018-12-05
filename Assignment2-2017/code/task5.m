load('PB_data.mat');
J = [f1,f2,f1.*f2];

[number, dimensional] = size(J);
count_phno1 = 1;
count_phno2 = 1;
for i = 1:number
    if phno(i) == 1
        x1(count_phno1,:) = J(i,:);
        count_phno1 =count_phno1 + 1;
    end
    
    if phno(i) == 2
        x2(count_phno2,:) = J(i,:);
        count_phno2 =count_phno2 + 1;
    end
end
x = x1;


[n, D] = size(x);                    % number of observations (n) and dimension (D)
k = 3;                              % number of components
p = ones(1,k)/k;                    % mixing proportions
mu = x(ceil(n.*rand(1,k)),:)';      % means picked rqandomly from data
s2 = zeros(D,D,k);                  % covariance matrices
niter=100;                          % number of iterations

% initialize covariances 

for i=1:k
  s2(:,:,i) = cov(x)./k;      % initially set to fraction of data covariance
end

set(gcf,'Renderer','zbuffer');

clear Z;
try

  % run EM for niter iterations
  
  for t=1:niter,
    fprintf('t=%d\r',t);
    % Do the E-step:
  
    for i=1:k
      Z(:,i) = p(i)*det(s2(:,:,i))^(-0.5)*exp(-0.5*sum((x'-repmat(mu(:,i),1,n))'*inv(s2(:,:,i)).*(x'-repmat(mu(:,i),1,n))',2));
    end
    Z = Z./repmat(sum(Z,2),1,k);
    
    % Do the M-step:
    
    for i=1:k
      mu(:,i) = (x'*Z(:,i))./sum(Z(:,i));
      
      % We will fit Gaussians with diagonal covariances:
      
      s2(:,:,i) = diag((x'-repmat(mu(:,i),1,n)).^2*Z(:,i)./sum(Z(:,i))); 
      
      % To fit general Gaussians use the line:
       s2(:,:,i) = ...
       (x'-repmat(mu(:,i),1,n))*(repmat(Z(:,i),1,D).*(x'-repmat(mu(:,i),1,n))')./sum(Z(:,i));
      
      p(i) = mean(Z(:,i));
    end
    
    clf
    hold on
    plot3(x(:,1),x(:,2),x(:,3),'.');
    for i=1:3
      plot_gaussian(2*s2(:,:,i),mu(:,i),i,11);
    end
    drawnow;
  end
  
catch
  disp('Numerical Error in Loop - Possibly Singular Matrix');
end
