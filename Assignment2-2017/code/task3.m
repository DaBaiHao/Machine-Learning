[number,~] = size(phno);

count_phno1 = 1;
count_phno2 = 1;
for i = 1:number
    if phno(i) == 1
        x1(count_phno1,:) = [f1(i),f2(i)];
        count_phno1 =count_phno1 + 1;
    end
    
    if phno(i) == 2
        x2(count_phno2,:) = [f1(i),f2(i)];
        count_phno2 =count_phno2 + 1;
    end
end
[n,~] = size(x2);
[mu_1,p_1,s2_1] = mog_function(3,x1)
[mu_2,p_2,s2_2] = mog_function(3,x2)
z_model1 = classfily(mu_1,s2_1,p_1,x1,x2,3);
z_model2 = classfily(mu_2,s2_2,p_2,x1,x2,3);
count_phno1_model1 = 1;
count_phno2_model1 = 1;
for i = 1:n
    if z_model1(i,1) > z_model2(i,1)
        model(i,1) = 1;
        count_phno1_model1 = count_phno1_model1+1;
    else
        model(i,1) = 2;
        
    end
    
    if z_model1(i,2) > z_model2(i,2)
        model(i,2) = 1;
        count_phno2_model1 = count_phno2_model1+1;
    else
        model(i,2) = 2;
    end
    
end

model1_phno1_acc = count_phno1_model1/n;
model1_phno2_acc = count_phno2_model1/n;


%% task4
[n,~] = size(x2);
M = zeros(number);
k = 3;
imagesc(M); 

min_f1 = min(f1);
max_f1 = max(f1);
min_f2 = min(f2);
max_f2 = max(f2);

count = 1;
for i = 1 : n
    if ((x1(i,1) <= max(f1))&&(x1(i,1) >= min(f1)))
        x_1(count,1) = x1(i,1) ;
        count =count+ 1;
    end
    if ((x1(i,2) <= max(f1))&&(x1(i,2) >= min(f1)))
        x_1(count,1) = x1(i,2) ;
        count =count+ 1;
    end
end
x_1 = sort(x_1);

count = 1;
for i = 1 : n
    if ((x2(i,1) <= max(f1))&&(x2(i,1) >= min(f1)))
        x_2(count,1) = x2(i,1) ;
        count =count+ 1;
    end
    if ((x2(i,2) <= max(f1))&&(x2(i,2) >= min(f1)))
        x_2(count,1) = x2(i,2) ;
        count =count+ 1;
    end
end
x_2 = sort(x_2);
[i_end,~] = size(x_1);
[j_end,~] = size(x_2);
for i = 1:i_end
    for j = 1:j_end
        
        x = [x_1(i,1),x_2(j,:)];
        z1 = classsily_task4(mu_1,s2_1,p_1,x,k);
        z2 = classsily_task4(mu_2,s2_2,p_2,x,k);
        if z1 > z2
            M(i,j) = 1;
        else
            M(i,j) = 2;
        end
        
    end
end
imagesc(M); 
    
    