function z = classsily_task4(mu,s2,p,x,k)

for i=1:k
    Z(:,i) = p(i)*det(s2(:,:,i))^(-0.5)*exp(-0.5*sum((x'-repmat(mu(:,i),1,1))'*inv(s2(:,:,i)).*(x'-repmat(mu(:,i),1,1))',2));
end


z= sum(Z );



end

